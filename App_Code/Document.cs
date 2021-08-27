using System;
using iTextSharp.text;

public class Document
{
    private Rectangle a4;
    private float v1;
    private float v2;
    private float v3;
    private float v4;

    public Document(Rectangle a4, float v1, float v2, float v3, float v4)
    {
        this.a4 = a4;
        this.v1 = v1;
        this.v2 = v2;
        this.v3 = v3;
        this.v4 = v4;
    }

    public void Open()
    {
        throw new NotImplementedException();
    }

    public void Close()
    {
        throw new NotImplementedException();
    }
}