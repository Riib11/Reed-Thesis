from PyPDF2 import PdfFileReader

def get_title(filepath):
    with open(filepath, "r") as file:
        pdf_reader = PdfFileReader(file)
        return pdf_reader.getDocumentInfo().title


