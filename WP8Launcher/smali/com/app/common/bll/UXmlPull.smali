.class public abstract Lcom/app/common/bll/UXmlPull;
.super Ljava/lang/Object;
.source "UXmlPull.java"


# instance fields
.field private mEnd:Z

.field private mEventCode:I

.field public mInStream:Ljava/io/InputStream;

.field private mXmlpull:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean v1, p0, Lcom/app/common/bll/UXmlPull;->mEnd:Z

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/app/common/bll/UXmlPull;->mXmlpull:Lorg/xmlpull/v1/XmlPullParser;

    .line 15
    iput v1, p0, Lcom/app/common/bll/UXmlPull;->mEventCode:I

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean v1, p0, Lcom/app/common/bll/UXmlPull;->mEnd:Z

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/app/common/bll/UXmlPull;->mXmlpull:Lorg/xmlpull/v1/XmlPullParser;

    .line 15
    iput v1, p0, Lcom/app/common/bll/UXmlPull;->mEventCode:I

    .line 21
    iput-object p1, p0, Lcom/app/common/bll/UXmlPull;->mInStream:Ljava/io/InputStream;

    .line 22
    return-void
.end method


# virtual methods
.method protected endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    return-void
.end method

.method protected endTag(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    return-void
.end method

.method public getAttributeCount()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/app/common/bll/UXmlPull;->mXmlpull:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    return v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/app/common/bll/UXmlPull;->mXmlpull:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeValueInt(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/app/common/bll/UXmlPull;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/app/common/utils/UConvert;->toInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/app/common/bll/UXmlPull;->mXmlpull:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/app/common/bll/UXmlPull;->mXmlpull:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextInt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    iget-object v1, p0, Lcom/app/common/bll/UXmlPull;->mXmlpull:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, text:Ljava/lang/String;
    invoke-static {v0}, Lcom/app/common/utils/UConvert;->toInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public isAttributeName(Ljava/lang/String;I)Z
    .locals 1
    .parameter "name"
    .parameter "index"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/app/common/bll/UXmlPull;->mXmlpull:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract isEmpty()Z
.end method

.method public read()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 76
    iget-object v0, p0, Lcom/app/common/bll/UXmlPull;->mInStream:Ljava/io/InputStream;

    if-nez v0, :cond_1

    .line 77
    iput-boolean v3, p0, Lcom/app/common/bll/UXmlPull;->mEnd:Z

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    iput-object v0, p0, Lcom/app/common/bll/UXmlPull;->mXmlpull:Lorg/xmlpull/v1/XmlPullParser;

    .line 82
    iget-object v0, p0, Lcom/app/common/bll/UXmlPull;->mXmlpull:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v1, p0, Lcom/app/common/bll/UXmlPull;->mInStream:Ljava/io/InputStream;

    const-string v2, "utf-8"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/app/common/bll/UXmlPull;->mXmlpull:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    iput v0, p0, Lcom/app/common/bll/UXmlPull;->mEventCode:I

    .line 90
    :goto_1
    iget v0, p0, Lcom/app/common/bll/UXmlPull;->mEventCode:I

    if-ne v0, v3, :cond_2

    .line 120
    iget-object v0, p0, Lcom/app/common/bll/UXmlPull;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 91
    :cond_2
    iget-boolean v0, p0, Lcom/app/common/bll/UXmlPull;->mEnd:Z

    if-nez v0, :cond_0

    .line 94
    iget v0, p0, Lcom/app/common/bll/UXmlPull;->mEventCode:I

    packed-switch v0, :pswitch_data_0

    .line 117
    :goto_2
    iget-object v0, p0, Lcom/app/common/bll/UXmlPull;->mXmlpull:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    iput v0, p0, Lcom/app/common/bll/UXmlPull;->mEventCode:I

    goto :goto_1

    .line 96
    :pswitch_0
    invoke-virtual {p0}, Lcom/app/common/bll/UXmlPull;->startDocument()V

    goto :goto_2

    .line 100
    :pswitch_1
    invoke-virtual {p0}, Lcom/app/common/bll/UXmlPull;->endDocument()V

    goto :goto_2

    .line 104
    :pswitch_2
    invoke-virtual {p0}, Lcom/app/common/bll/UXmlPull;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/app/common/bll/UXmlPull;->startTag(Ljava/lang/String;)V

    goto :goto_2

    .line 108
    :pswitch_3
    invoke-virtual {p0}, Lcom/app/common/bll/UXmlPull;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/app/common/bll/UXmlPull;->endTag(Ljava/lang/String;)V

    goto :goto_2

    .line 112
    :pswitch_4
    invoke-virtual {p0}, Lcom/app/common/bll/UXmlPull;->text()V

    goto :goto_2

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    return-void
.end method

.method protected startTag(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    return-void
.end method

.method protected text()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 73
    return-void
.end method
