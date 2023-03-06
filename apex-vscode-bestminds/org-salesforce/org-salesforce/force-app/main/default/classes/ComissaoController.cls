public class ComissaoController{
    private ApexPages.StandardController stdCtrl;
    public ComissaoController(ApexPages.StandardController std){
        this.stdCtrl = std;
    }

    public PageReference GerarComprovante(){
        Comissao__c comissao = (Comissao__c)stdCtrl.getRecord();
        PageReference pdf = Page.GerarComprovantePage;
        pdf.getParameters().put('id', comissao.Id);
        Blob pdfBlob = pdf.getContentAsPDF();
        Attachment pdfAttachment = new Attachment();
        pdfAttachment.Body = pdfBlob;
        pdfAttachment.Name = 'Comprovante da Comissão.pdf';
        pdfAttachment.ParentId = comissao.Id;
        insert pdfAttachment;
        return new PageReference('/' + comissao.Id);
    }

}
