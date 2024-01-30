class PdfMailer < ApplicationMailer
  def send_report
   @message = "Hey this is a result from your test suite."
   pdf_content_path = generate_pdf_content

     attachments['test_result_report.pdf'] = File.read(pdf_content_path)

     mail(to: 'email@gmail.com', subject: 'Test Report Results.')
  end

  private

  def generate_pdf_content
   pdf_service = PdfGeneratorService.new
     pdf = pdf_service.generate_pdf
     pdf_file = Tempfile.new(['test_result_report', '.pdf'], Rails.root.join('tmp')) # store the generated pdf in tmp folder to be attached when sending mail.
     pdf_file.binmode # converts the document content to binary mode. When you set a file to binary mode using binmode, it ensures that no newline character translations or character encoding conversions occur when reading or writing data
     pdf_file.write(pdf)
     pdf_file.rewind # move cursor to the top start of the page
     pdf_file.close
     pdf_file.path # generated pdf path
  end
 end
