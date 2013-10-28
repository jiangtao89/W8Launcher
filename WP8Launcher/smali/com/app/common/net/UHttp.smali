.class public Lcom/app/common/net/UHttp;
.super Ljava/lang/Object;
.source "UHttp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/common/net/UHttp$OnPostedListener;
    }
.end annotation


# static fields
.field static final BOUNDARY:Ljava/lang/String; = null

.field static final CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final ConnectTimeout:I = 0x4e20

.field static final LINEND:Ljava/lang/String; = "\r\n"

.field static final MULTIPART_FROM_DATA:Ljava/lang/String; = "multipart/form-data"

.field static final PREFIX:Ljava/lang/String; = "--"

.field private static final ReadTimeout:I = 0x4e20


# instance fields
.field public mAPNType:Ljava/lang/String;

.field public mErrorFlag:Z

.field public mErrorMsg:Ljava/lang/String;

.field public mHaveNet:Z

.field public mIP:Ljava/lang/String;

.field public mInStream:Ljava/io/InputStream;

.field private mLetGo:Z

.field public mNetType:Ljava/lang/String;

.field public mRespondCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/app/common/net/UHttp;->BOUNDARY:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/app/common/net/UHttp;->mHaveNet:Z

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/app/common/net/UHttp;->mNetType:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/app/common/net/UHttp;->mAPNType:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/app/common/net/UHttp;->mErrorFlag:Z

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/app/common/net/UHttp;->mErrorMsg:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/app/common/net/UHttp;->mIP:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/app/common/net/UHttp;->mInStream:Ljava/io/InputStream;

    .line 61
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1
    .parameter "iserror"
    .parameter "errormsg"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/app/common/net/UHttp;->mHaveNet:Z

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/app/common/net/UHttp;->mNetType:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/app/common/net/UHttp;->mAPNType:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/app/common/net/UHttp;->mErrorFlag:Z

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/app/common/net/UHttp;->mErrorMsg:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/app/common/net/UHttp;->mIP:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/app/common/net/UHttp;->mInStream:Ljava/io/InputStream;

    .line 64
    iput-boolean p1, p0, Lcom/app/common/net/UHttp;->mErrorFlag:Z

    .line 65
    iput-object p2, p0, Lcom/app/common/net/UHttp;->mErrorMsg:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public static HtmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "content"

    .prologue
    .line 398
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 399
    .local v3, stringbuffer:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 400
    .local v2, j:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 447
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v4

    .line 401
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 402
    .local v0, c:C
    sparse-switch v0, :sswitch_data_0

    .line 443
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 400
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 404
    :sswitch_0
    const-string v4, "&lt;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 407
    :sswitch_1
    const-string v4, "&gt;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 410
    :sswitch_2
    const-string v4, "&amp;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 413
    :sswitch_3
    const-string v4, "&quot;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 416
    :sswitch_4
    const-string v4, "&copy;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 419
    :sswitch_5
    const-string v4, "&reg;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 422
    :sswitch_6
    const-string v4, "&yen;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 425
    :sswitch_7
    const-string v4, "&euro;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 428
    :sswitch_8
    const-string v4, "&#153;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 431
    :sswitch_9
    add-int/lit8 v4, v2, -0x1

    if-ge v1, v4, :cond_2

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    .line 432
    const-string v4, "<br>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    add-int/lit8 v1, v1, 0x1

    .line 435
    goto :goto_1

    .line 437
    :sswitch_a
    add-int/lit8 v4, v2, -0x1

    if-ge v1, v4, :cond_1

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_1

    .line 438
    const-string v4, " &nbsp;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 439
    add-int/lit8 v1, v1, 0x1

    .line 440
    goto :goto_1

    .line 402
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_9
        0x20 -> :sswitch_a
        0x22 -> :sswitch_3
        0x26 -> :sswitch_2
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
        0xa5 -> :sswitch_6
        0xa9 -> :sswitch_4
        0xae -> :sswitch_5
        0x20ac -> :sswitch_7
        0x2122 -> :sswitch_8
    .end sparse-switch
.end method

.method public static Post1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/app/common/net/UHttp;
    .locals 11
    .parameter "context"
    .parameter "httpurl"
    .parameter "params"
    .parameter "IsAddError"

    .prologue
    const/16 v9, 0x4e20

    const/4 v10, 0x1

    .line 309
    new-instance v1, Lcom/app/common/net/UHttp;

    invoke-direct {v1}, Lcom/app/common/net/UHttp;-><init>()V

    .line 310
    .local v1, http:Lcom/app/common/net/UHttp;
    if-eqz p0, :cond_0

    .line 311
    invoke-virtual {v1, p0}, Lcom/app/common/net/UHttp;->checkNetwork(Landroid/content/Context;)V

    .line 312
    iget-boolean v8, v1, Lcom/app/common/net/UHttp;->mHaveNet:Z

    if-nez v8, :cond_0

    .line 351
    :goto_0
    return-object v1

    .line 317
    :cond_0
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 318
    .local v2, httpParams:Lorg/apache/http/params/HttpParams;
    invoke-static {v2, v9}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 319
    invoke-static {v2, v9}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 321
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 322
    .local v3, httpclient:Lorg/apache/http/client/HttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 325
    .local v4, httppost:Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    invoke-static {p2}, Lcom/app/common/net/UHttp;->setPostParams(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 326
    .local v5, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-eqz v5, :cond_1

    .line 327
    new-instance v8, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v8, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v4, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 329
    :cond_1
    invoke-interface {v3, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 330
    .local v6, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 331
    .local v7, statusCode:I
    const/16 v8, 0xc8

    if-ne v7, v8, :cond_2

    .line 333
    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/app/common/net/UHttp;->mErrorFlag:Z

    .line 338
    :goto_1
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/app/common/utils/UFile;->toStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    iput-object v8, v1, Lcom/app/common/net/UHttp;->mInStream:Ljava/io/InputStream;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 339
    .end local v5           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    .end local v7           #statusCode:I
    :catch_0
    move-exception v0

    .line 342
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    iput-boolean v10, v1, Lcom/app/common/net/UHttp;->mErrorFlag:Z

    .line 343
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/app/common/net/UHttp;->mErrorMsg:Ljava/lang/String;

    goto :goto_0

    .line 335
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    .restart local v5       #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v6       #response:Lorg/apache/http/HttpResponse;
    .restart local v7       #statusCode:I
    :cond_2
    const/4 v8, 0x1

    :try_start_1
    iput-boolean v8, v1, Lcom/app/common/net/UHttp;->mErrorFlag:Z

    .line 336
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u8bbf\u95ee\u51fa\u9519:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/app/common/net/UHttp;->mErrorMsg:Ljava/lang/String;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 344
    .end local v5           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    .end local v7           #statusCode:I
    :catch_1
    move-exception v0

    .line 347
    .local v0, e:Ljava/io/IOException;
    iput-boolean v10, v1, Lcom/app/common/net/UHttp;->mErrorFlag:Z

    .line 348
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/app/common/net/UHttp;->mErrorMsg:Ljava/lang/String;

    .line 349
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "UHttp request by post error, msg "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/app/common/utils/ULog;->e(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static UrlDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"

    .prologue
    .line 392
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    const-string v0, ""

    .line 394
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static UrlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"

    .prologue
    .line 386
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    const-string v0, ""

    .line 388
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/app/common/net/UHttp;->UrlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/app/common/net/UHttp;
    .locals 1
    .parameter "context"
    .parameter "httpurl"
    .parameter "params"

    .prologue
    .line 100
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/app/common/net/UHttp;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/app/common/net/UHttp;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/app/common/net/UHttp;
    .locals 9
    .parameter "context"
    .parameter "httpurl"
    .parameter "params"
    .parameter "IsAddError"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 187
    new-instance v4, Lcom/app/common/net/UHttp;

    invoke-direct {v4}, Lcom/app/common/net/UHttp;-><init>()V

    .line 188
    .local v4, http:Lcom/app/common/net/UHttp;
    if-eqz p2, :cond_1

    const-string v7, ""

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 189
    const-string v3, "?"

    .line 190
    .local v3, ext:Ljava/lang/String;
    const-string v7, "?"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_0

    .line 191
    const-string v3, "&"

    .line 193
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 195
    .end local v3           #ext:Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    move v5, v6

    :cond_2
    invoke-static {p0, p1, v4, v5}, Lcom/app/common/net/UHttp;->getHttpURLConnection(Landroid/content/Context;Ljava/lang/String;Lcom/app/common/net/UHttp;Z)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 196
    .local v0, conn:Ljava/net/HttpURLConnection;
    if-nez v0, :cond_4

    .line 238
    :cond_3
    :goto_0
    return-object v4

    .line 199
    :cond_4
    const/4 v1, 0x0

    .line 200
    .local v1, connCount:I
    :goto_1
    const/4 v5, 0x2

    if-ge v1, v5, :cond_3

    .line 202
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 203
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 205
    const/16 v5, 0x4e20

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 206
    const/16 v5, 0x4e20

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 208
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 210
    const-string v5, "GET"

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 212
    const-string v5, "Accept"

    .line 213
    const-string v7, "image/gif, image/jpeg, image/pjpeg, image/pjpeg, application/x-shockwave-flash, application/xaml+xml, application/vnd.ms-xpsdocument, application/x-ms-xbap, application/x-ms-application, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, */*"

    .line 211
    invoke-virtual {v0, v5, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v5, "Accept-Language"

    const-string v7, "zh-CN"

    invoke-virtual {v0, v5, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v5, "Charset"

    const-string v7, "UTF-8"

    invoke-virtual {v0, v5, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v5, "User-Agent"

    .line 219
    const-string v7, "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.2; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)"

    .line 217
    invoke-virtual {v0, v5, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v5, "Connection"

    const-string v7, "Keep-Alive"

    invoke-virtual {v0, v5, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, v4, Lcom/app/common/net/UHttp;->mInStream:Ljava/io/InputStream;

    .line 225
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    iput v5, v4, Lcom/app/common/net/UHttp;->mRespondCode:I

    .line 226
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/app/common/net/UHttp;->mErrorFlag:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    :catch_0
    move-exception v2

    .line 230
    .local v2, e:Ljava/lang/Exception;
    add-int/lit8 v1, v1, 0x1

    .line 233
    iput-boolean v6, v4, Lcom/app/common/net/UHttp;->mErrorFlag:Z

    .line 234
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/app/common/net/UHttp;->mErrorMsg:Ljava/lang/String;

    .line 235
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "UHttp request by get error, msg "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/app/common/utils/ULog;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getHttpURLConnection(Landroid/content/Context;Ljava/lang/String;Lcom/app/common/net/UHttp;Z)Ljava/net/HttpURLConnection;
    .locals 10
    .parameter "context"
    .parameter "httpurl"
    .parameter "http"
    .parameter "bGet"

    .prologue
    const/4 v9, 0x1

    .line 152
    invoke-virtual {p2, p0}, Lcom/app/common/net/UHttp;->checkNetwork(Landroid/content/Context;)V

    .line 153
    iget-boolean v6, p2, Lcom/app/common/net/UHttp;->mHaveNet:Z

    if-nez v6, :cond_0

    .line 154
    iput-boolean v9, p2, Lcom/app/common/net/UHttp;->mErrorFlag:Z

    .line 155
    const-string v6, "\u6ca1\u6709\u7f51\u7edc"

    iput-object v6, p2, Lcom/app/common/net/UHttp;->mErrorMsg:Ljava/lang/String;

    .line 156
    const/4 v1, 0x0

    .line 180
    :goto_0
    return-object v1

    .line 158
    :cond_0
    const/4 v1, 0x0

    .line 159
    .local v1, conn:Ljava/net/HttpURLConnection;
    const/4 v4, 0x0

    .line 161
    .local v4, url:Ljava/net/URL;
    if-eqz p3, :cond_1

    .line 162
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&network="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Lcom/app/common/net/UHttp;->mNetType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 164
    :cond_1
    invoke-static {p1}, Lcom/app/common/utils/ULog;->d(Ljava/lang/String;)V

    .line 166
    :try_start_0
    invoke-virtual {p2}, Lcom/app/common/net/UHttp;->isCmwapType()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 167
    const-string v6, "//[^/]+"

    invoke-static {p1, v6}, Lcom/app/common/utils/URegex;->Match(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "//"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, doMain:Ljava/lang/String;
    new-instance v5, Ljava/net/URL;

    const-string v6, "10.0.0.172"

    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v4           #url:Ljava/net/URL;
    .local v5, url:Ljava/net/URL;
    :try_start_1
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 170
    const-string v6, "X-Online-Host"

    invoke-virtual {v1, v6, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .end local v5           #url:Ljava/net/URL;
    .restart local v4       #url:Ljava/net/URL;
    goto :goto_0

    .line 172
    .end local v2           #doMain:Ljava/lang/String;
    :cond_2
    :try_start_2
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 173
    .end local v4           #url:Ljava/net/URL;
    .restart local v5       #url:Ljava/net/URL;
    :try_start_3
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v4, v5

    .end local v5           #url:Ljava/net/URL;
    .restart local v4       #url:Ljava/net/URL;
    goto :goto_0

    .line 175
    :catch_0
    move-exception v3

    .line 176
    .local v3, e:Ljava/lang/Exception;
    :goto_1
    iput-boolean v9, p2, Lcom/app/common/net/UHttp;->mErrorFlag:Z

    .line 177
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p2, Lcom/app/common/net/UHttp;->mErrorMsg:Ljava/lang/String;

    .line 178
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "UHttp request by get error, msg "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/app/common/utils/ULog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #url:Ljava/net/URL;
    .restart local v5       #url:Ljava/net/URL;
    :catch_1
    move-exception v3

    move-object v4, v5

    .end local v5           #url:Ljava/net/URL;
    .restart local v4       #url:Ljava/net/URL;
    goto :goto_1
.end method

.method public static getParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "params"

    .prologue
    .line 70
    invoke-static {}, Lcom/app/common/gy/Phone;->getModel()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/app/common/net/UHttp;->UrlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, phoneName:Ljava/lang/String;
    invoke-static {}, Lcom/app/common/gy/Phone;->getVsSDK()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/app/common/net/UHttp;->UrlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, phoneVs:Ljava/lang/String;
    invoke-static {}, Lcom/app/common/gy/Phone;->getVsRelease()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/app/common/net/UHttp;->UrlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, phoneVsNo:Ljava/lang/String;
    invoke-static {}, Lcom/app/common/config/BaseGlobal;->getKeyWord()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/app/common/net/UHttp;->UrlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, keyValue:Ljava/lang/String;
    invoke-static {}, Lcom/app/common/gy/Phone;->getImei()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/app/common/net/UHttp;->UrlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, imei:Ljava/lang/String;
    invoke-static {}, Lcom/app/common/config/BaseGlobal;->getChannelKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/app/common/net/UHttp;->UrlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, channelkey:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v6, sb:Ljava/lang/StringBuilder;
    const-string v8, "imei="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&phonename="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&phonevs="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 79
    const-string v9, "&phonevsno="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&keyvalue="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&channelkey="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 80
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&softvs="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/app/common/config/BaseGlobal;->getVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&flatid=1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-static {}, Lcom/app/common/config/BaseGlobal;->getSoftId()Ljava/lang/String;

    move-result-object v7

    .line 83
    .local v7, softid:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 84
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "&softid="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 93
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "&"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static getWap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/app/common/net/UHttp;
    .locals 11
    .parameter "context"
    .parameter "httpurl"
    .parameter "params"

    .prologue
    const/4 v10, 0x1

    .line 107
    new-instance v4, Lcom/app/common/net/UHttp;

    invoke-direct {v4}, Lcom/app/common/net/UHttp;-><init>()V

    .line 108
    .local v4, http:Lcom/app/common/net/UHttp;
    invoke-virtual {v4, p0}, Lcom/app/common/net/UHttp;->checkNetwork(Landroid/content/Context;)V

    .line 109
    iget-boolean v7, v4, Lcom/app/common/net/UHttp;->mHaveNet:Z

    if-nez v7, :cond_0

    .line 110
    iput-boolean v10, v4, Lcom/app/common/net/UHttp;->mErrorFlag:Z

    .line 111
    const-string v7, "\u6ca1\u6709\u7f51\u7edc"

    iput-object v7, v4, Lcom/app/common/net/UHttp;->mErrorMsg:Ljava/lang/String;

    .line 148
    :goto_0
    return-object v4

    .line 115
    :cond_0
    iget-object v7, v4, Lcom/app/common/net/UHttp;->mAPNType:Ljava/lang/String;

    const-string v8, "cmwap"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 116
    iput-boolean v10, v4, Lcom/app/common/net/UHttp;->mErrorFlag:Z

    .line 117
    const-string v7, "\u60a8\u5fc5\u987b\u4f7f\u7528cmwap\u63a5\u5165\u70b9\u624d\u80fd\u4f7f\u7528\u8be5\u529f\u80fd!"

    iput-object v7, v4, Lcom/app/common/net/UHttp;->mErrorMsg:Ljava/lang/String;

    goto :goto_0

    .line 121
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 122
    const/4 v5, 0x0

    .line 123
    .local v5, url:Ljava/net/URL;
    const/4 v1, 0x0

    .line 124
    .local v1, conn:Ljava/net/HttpURLConnection;
    invoke-static {p1}, Lcom/app/common/utils/ULog;->d(Ljava/lang/String;)V

    .line 127
    :try_start_0
    const-string v7, "//[^/]+"

    invoke-static {p1, v7}, Lcom/app/common/utils/URegex;->Match(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "//"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, doMain:Ljava/lang/String;
    new-instance v6, Ljava/net/URL;

    const-string v7, "10.0.0.172"

    invoke-virtual {p1, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v5           #url:Ljava/net/URL;
    .local v6, url:Ljava/net/URL;
    :try_start_1
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 130
    const-string v7, "X-Online-Host"

    invoke-virtual {v1, v7, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 133
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 134
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 135
    const/16 v7, 0x4e20

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 136
    const/16 v7, 0x4e20

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 137
    const-string v7, "GET"

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    iput-object v7, v4, Lcom/app/common/net/UHttp;->mInStream:Ljava/io/InputStream;

    .line 141
    const/4 v7, 0x0

    iput-boolean v7, v4, Lcom/app/common/net/UHttp;->mErrorFlag:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    .end local v6           #url:Ljava/net/URL;
    .restart local v5       #url:Ljava/net/URL;
    goto :goto_0

    .line 143
    .end local v2           #doMain:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 145
    .local v3, e:Ljava/lang/Exception;
    :goto_1
    iput-boolean v10, v4, Lcom/app/common/net/UHttp;->mErrorFlag:Z

    .line 146
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/app/common/net/UHttp;->mErrorMsg:Ljava/lang/String;

    goto/16 :goto_0

    .line 143
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #url:Ljava/net/URL;
    .restart local v2       #doMain:Ljava/lang/String;
    .restart local v6       #url:Ljava/net/URL;
    :catch_1
    move-exception v3

    move-object v5, v6

    .end local v6           #url:Ljava/net/URL;
    .restart local v5       #url:Ljava/net/URL;
    goto :goto_1
.end method

.method public static isHaveNetwork(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "netTypeName"

    .prologue
    .line 471
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 472
    .local v0, cwjManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 473
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 474
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object p1

    .line 475
    const/4 v2, 0x1

    .line 477
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static mobileNet(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 484
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 493
    .local v1, telManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, imsi:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 495
    const-string v2, "46000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "46002"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 496
    :cond_0
    const-string v2, "\u4e2d\u56fd\u79fb\u52a8"

    .line 503
    :goto_0
    return-object v2

    .line 497
    :cond_1
    const-string v2, "46001"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 498
    const-string v2, "\u4e2d\u56fd\u8054\u901a "

    goto :goto_0

    .line 499
    :cond_2
    const-string v2, "46003"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 500
    const-string v2, "\u4e2d\u56fd\u7535\u4fe1 "

    goto :goto_0

    .line 503
    :cond_3
    const-string v2, ""

    goto :goto_0
.end method

.method public static post(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/app/common/net/UHttp;
    .locals 1
    .parameter "context"
    .parameter "httpurl"
    .parameter "params"

    .prologue
    .line 246
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/app/common/net/UHttp;->post(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/app/common/net/UHttp;

    move-result-object v0

    return-object v0
.end method

.method public static post(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/app/common/net/UHttp;
    .locals 1
    .parameter "context"
    .parameter "httpurl"
    .parameter "params"
    .parameter "IsAddError"

    .prologue
    .line 242
    invoke-static {p0, p1, p2, p3}, Lcom/app/common/net/UHttp;->post2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/app/common/net/UHttp;

    move-result-object v0

    return-object v0
.end method

.method public static post(Ljava/lang/String;Ljava/lang/String;)Lcom/app/common/net/UHttp;
    .locals 2
    .parameter "httpurl"
    .parameter "params"

    .prologue
    .line 250
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, v1}, Lcom/app/common/net/UHttp;->post(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/app/common/net/UHttp;

    move-result-object v0

    return-object v0
.end method

.method public static post2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/app/common/net/UHttp;
    .locals 7
    .parameter "context"
    .parameter "httpurl"
    .parameter "params"
    .parameter "IsAddError"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 254
    new-instance v2, Lcom/app/common/net/UHttp;

    invoke-direct {v2}, Lcom/app/common/net/UHttp;-><init>()V

    .line 255
    .local v2, http:Lcom/app/common/net/UHttp;
    invoke-static {p0, p1, v2, v4}, Lcom/app/common/net/UHttp;->getHttpURLConnection(Landroid/content/Context;Ljava/lang/String;Lcom/app/common/net/UHttp;Z)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 256
    .local v0, conn:Ljava/net/HttpURLConnection;
    if-nez v0, :cond_0

    .line 305
    :goto_0
    return-object v2

    .line 259
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "&network="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/app/common/net/UHttp;->mNetType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 263
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 264
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 266
    const/16 v4, 0x4e20

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 267
    const/16 v4, 0x4e20

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 269
    const-string v4, "POST"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 271
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 273
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 277
    const-string v4, "Charset"

    const-string v5, "UTF-8"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v4, "Connection"

    const-string v5, "Keep-Alive"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v4, "Content-Type"

    const-string v5, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 285
    .local v3, out:Ljava/io/DataOutputStream;
    invoke-virtual {v3, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 287
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 289
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/app/common/net/UHttp;->mErrorFlag:Z

    .line 291
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, v2, Lcom/app/common/net/UHttp;->mInStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 297
    .end local v3           #out:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v1

    .line 300
    .local v1, e:Ljava/lang/Exception;
    iput-boolean v6, v2, Lcom/app/common/net/UHttp;->mErrorFlag:Z

    .line 301
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/app/common/net/UHttp;->mErrorMsg:Ljava/lang/String;

    .line 302
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "UHttp request by post error, msg "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/app/common/utils/ULog;->e(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static postFiles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/app/common/net/UHttp$OnPostedListener;)Lcom/app/common/net/UHttp;
    .locals 27
    .parameter "context"
    .parameter "actionUrl"
    .parameter "params"
    .parameter "filePathArray"
    .parameter "postedListener"

    .prologue
    .line 518
    new-instance v11, Lcom/app/common/net/UHttp;

    invoke-direct {v11}, Lcom/app/common/net/UHttp;-><init>()V

    .line 519
    .local v11, http:Lcom/app/common/net/UHttp;
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/app/common/net/UHttp;->setLetGo(Z)V

    .line 520
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-static {v0, v1, v11, v2}, Lcom/app/common/net/UHttp;->getHttpURLConnection(Landroid/content/Context;Ljava/lang/String;Lcom/app/common/net/UHttp;Z)Ljava/net/HttpURLConnection;

    move-result-object v6

    .line 521
    .local v6, conn:Ljava/net/HttpURLConnection;
    if-nez v6, :cond_1

    .line 604
    :cond_0
    :goto_0
    return-object v11

    .line 524
    :cond_1
    invoke-static {v6}, Lcom/app/common/net/UHttp;->setPostConn(Ljava/net/HttpURLConnection;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 530
    :try_start_0
    new-instance v16, Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 536
    .local v16, outStream:Ljava/io/DataOutputStream;
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/app/common/net/UHttp;->setPostParams(Ljava/io/DataOutputStream;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 541
    if-eqz p3, :cond_3

    .line 542
    const-wide/16 v21, 0x0

    .line 543
    .local v21, totalSize:J
    const-wide/16 v17, 0x0

    .line 544
    .local v17, postedSize:J
    if-eqz p4, :cond_2

    .line 545
    :try_start_1
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v24, v0

    const/16 v23, 0x0

    :goto_1
    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_4

    .line 551
    :cond_2
    const/4 v12, 0x0

    .line 552
    .local v12, i:I
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v24, v0

    const/16 v23, 0x0

    move v13, v12

    .end local v12           #i:I
    .local v13, i:I
    :goto_2
    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_5

    .line 587
    .end local v13           #i:I
    .end local v17           #postedSize:J
    .end local v21           #totalSize:J
    :cond_3
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "--"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v24, Lcom/app/common/net/UHttp;->BOUNDARY:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "--"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\r\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 588
    .local v8, end_data:[B
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/io/DataOutputStream;->write([B)V

    .line 589
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataOutputStream;->flush()V

    .line 590
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataOutputStream;->close()V

    .line 593
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v19

    .line 594
    .local v19, res:I
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v11, Lcom/app/common/net/UHttp;->mInStream:Ljava/io/InputStream;

    .line 596
    const/16 v23, 0xc8

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 597
    const/16 v23, 0x0

    move/from16 v0, v23

    iput-boolean v0, v11, Lcom/app/common/net/UHttp;->mErrorFlag:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 601
    .end local v8           #end_data:[B
    .end local v19           #res:I
    :catch_0
    move-exception v7

    .line 602
    .local v7, e:Ljava/lang/Exception;
    const/16 v23, 0x1

    move/from16 v0, v23

    iput-boolean v0, v11, Lcom/app/common/net/UHttp;->mErrorFlag:Z

    .line 603
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v11, Lcom/app/common/net/UHttp;->mErrorMsg:Ljava/lang/String;

    goto/16 :goto_0

    .line 531
    .end local v7           #e:Ljava/lang/Exception;
    .end local v16           #outStream:Ljava/io/DataOutputStream;
    :catch_1
    move-exception v7

    .line 532
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 545
    .end local v7           #e:Ljava/io/IOException;
    .restart local v16       #outStream:Ljava/io/DataOutputStream;
    .restart local v17       #postedSize:J
    .restart local v21       #totalSize:J
    :cond_4
    :try_start_2
    aget-object v10, p3, v23

    .line 546
    .local v10, filePath:Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 547
    .local v9, file:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v25

    add-long v21, v21, v25

    .line 545
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1

    .line 552
    .end local v9           #file:Ljava/io/File;
    .end local v10           #filePath:Ljava/lang/String;
    .restart local v13       #i:I
    :cond_5
    aget-object v10, p3, v23

    .line 553
    .restart local v10       #filePath:Ljava/lang/String;
    invoke-virtual {v11}, Lcom/app/common/net/UHttp;->isLetGo()Z

    move-result v25

    if-eqz v25, :cond_3

    .line 556
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 558
    .restart local v9       #file:Ljava/io/File;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 559
    .local v20, sb1:Ljava/lang/StringBuilder;
    const-string v25, "--"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    sget-object v25, Lcom/app/common/net/UHttp;->BOUNDARY:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    const-string v25, "\r\n"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "Content-Disposition: form-data; name=\"file"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v12, v13, 0x1

    .end local v13           #i:I
    .restart local v12       #i:I
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\"; filename=\""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 563
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\r\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 562
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    const-string v25, "Content-Type: application/octet-stream; charset=UTF-8\r\n"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    const-string v25, "\r\n"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 568
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 569
    .local v14, is:Ljava/io/InputStream;
    const/4 v15, 0x0

    .line 570
    .local v15, len:I
    const/16 v25, 0x1000

    move/from16 v0, v25

    new-array v5, v0, [B

    .line 571
    .local v5, buffer:[B
    :cond_6
    :goto_3
    invoke-virtual {v11}, Lcom/app/common/net/UHttp;->isLetGo()Z

    move-result v25

    if-eqz v25, :cond_7

    invoke-virtual {v14, v5}, Ljava/io/InputStream;->read([B)I

    move-result v15

    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v15, v0, :cond_8

    .line 581
    :cond_7
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 582
    const-string v25, "\r\n"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 552
    add-int/lit8 v23, v23, 0x1

    move v13, v12

    .end local v12           #i:I
    .restart local v13       #i:I
    goto/16 :goto_2

    .line 572
    .end local v13           #i:I
    .restart local v12       #i:I
    :cond_8
    const/16 v25, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v5, v1, v15}, Ljava/io/DataOutputStream;->write([BII)V

    .line 573
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataOutputStream;->flush()V

    .line 575
    if-eqz p4, :cond_6

    .line 576
    int-to-long v0, v15

    move-wide/from16 v25, v0

    add-long v17, v17, v25

    .line 577
    move-object/from16 v0, p4

    move-wide/from16 v1, v17

    move-wide/from16 v3, v21

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/app/common/net/UHttp$OnPostedListener;->posted(JJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method private static setPostConn(Ljava/net/HttpURLConnection;)Z
    .locals 5
    .parameter "conn"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 643
    const v3, 0x36ee80

    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 644
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 645
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 646
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 648
    :try_start_0
    const-string v3, "POST"

    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    const-string v2, "connection"

    const-string v3, "keep-alive"

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v2, "Charsert"

    const-string v3, "UTF-8"

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const-string v2, "Content-Type"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "multipart/form-data;boundary="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/app/common/net/UHttp;->BOUNDARY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const/16 v2, 0x5000

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 659
    :goto_0
    return v1

    .line 649
    :catch_0
    move-exception v0

    .line 650
    .local v0, e:Ljava/net/ProtocolException;
    invoke-virtual {v0}, Ljava/net/ProtocolException;->printStackTrace()V

    move v1, v2

    .line 652
    goto :goto_0
.end method

.method public static setPostParams(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 355
    const/4 v2, 0x0

    .line 357
    .local v2, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :try_start_0
    const-string v8, "&"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 358
    .local v7, tempParams:[Ljava/lang/String;
    if-eqz v7, :cond_0

    array-length v8, v7

    if-lez v8, :cond_0

    .line 359
    new-instance v3, Ljava/util/ArrayList;

    array-length v8, v7

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 361
    .end local v2           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local v3, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :try_start_1
    const-string v5, ""

    .line 362
    .local v5, param1:Ljava/lang/String;
    const-string v6, ""

    .line 363
    .local v6, param2:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v8, v7

    if-lt v1, v8, :cond_1

    move-object v2, v3

    .line 382
    .end local v1           #i:I
    .end local v3           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v5           #param1:Ljava/lang/String;
    .end local v6           #param2:Ljava/lang/String;
    .end local v7           #tempParams:[Ljava/lang/String;
    .restart local v2       #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_0
    :goto_1
    return-object v2

    .line 364
    .end local v2           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v1       #i:I
    .restart local v3       #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v5       #param1:Ljava/lang/String;
    .restart local v6       #param2:Ljava/lang/String;
    .restart local v7       #tempParams:[Ljava/lang/String;
    :cond_1
    aget-object v8, v7, v1

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-le v8, v9, :cond_3

    .line 365
    aget-object v8, v7, v1

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 366
    .local v4, param:[Ljava/lang/String;
    array-length v8, v4

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 367
    const/4 v8, 0x0

    aget-object v5, v4, v8

    .line 368
    const/4 v8, 0x1

    aget-object v6, v4, v8

    .line 373
    :goto_2
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v8, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    .end local v4           #param:[Ljava/lang/String;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    .restart local v4       #param:[Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    aget-object v5, v4, v8

    .line 371
    const-string v6, ""

    goto :goto_2

    .line 375
    .end local v4           #param:[Ljava/lang/String;
    :cond_3
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "ta"

    const-string v10, "tb"

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 378
    .end local v1           #i:I
    .end local v5           #param1:Ljava/lang/String;
    .end local v6           #param2:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 380
    .end local v3           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v7           #tempParams:[Ljava/lang/String;
    .local v0, e:Ljava/lang/Exception;
    .restart local v2       #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "UHTTP set post params error ,msg "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/app/common/utils/ULog;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 378
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_4
.end method

.method private static setPostParams(Ljava/io/DataOutputStream;Ljava/lang/String;)Z
    .locals 7
    .parameter "outStream"
    .parameter "params"

    .prologue
    .line 664
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 666
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-static {p1}, Lcom/app/common/net/UHttp;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 667
    invoke-static {p1}, Lcom/app/common/net/UHttp;->setPostParams(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 669
    .local v2, pairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 682
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    const/4 v4, 0x1

    :goto_1
    return v4

    .line 669
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 670
    .local v1, pair:Lorg/apache/http/NameValuePair;
    const-string v5, "--"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    sget-object v5, Lcom/app/common/net/UHttp;->BOUNDARY:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    const-string v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Content-Disposition: form-data; name=\""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    const-string v5, "Content-Type: text/plain; charset=UTF-8\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    const-string v5, "Content-Transfer-Encoding: 8bit\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    const-string v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    const-string v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 683
    .end local v1           #pair:Lorg/apache/http/NameValuePair;
    :catch_0
    move-exception v0

    .line 684
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 685
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public checkNetwork(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 451
    if-nez p1, :cond_0

    sget-object p1, Lcom/app/common/Activity;->mCurActivity:Lcom/app/common/Activity;

    .line 452
    :cond_0
    if-nez p1, :cond_1

    .line 464
    :goto_0
    return-void

    .line 454
    :cond_1
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 455
    .local v0, cwjManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 456
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 457
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/app/common/net/UHttp;->mHaveNet:Z

    .line 458
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/app/common/net/UHttp;->mNetType:Ljava/lang/String;

    .line 459
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/app/common/net/UHttp;->mAPNType:Ljava/lang/String;

    .line 460
    const-string v2, ""

    iput-object v2, p0, Lcom/app/common/net/UHttp;->mIP:Ljava/lang/String;

    goto :goto_0

    .line 463
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/app/common/net/UHttp;->mHaveNet:Z

    goto :goto_0
.end method

.method public isCmwapType()Z
    .locals 2

    .prologue
    .line 634
    iget-object v0, p0, Lcom/app/common/net/UHttp;->mAPNType:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/app/common/net/UHttp;->mAPNType:Ljava/lang/String;

    const-string v1, "cmwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isCmwapType(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 638
    invoke-virtual {p0, p1}, Lcom/app/common/net/UHttp;->checkNetwork(Landroid/content/Context;)V

    .line 639
    invoke-virtual {p0}, Lcom/app/common/net/UHttp;->isCmwapType()Z

    move-result v0

    return v0
.end method

.method public isLetGo()Z
    .locals 1

    .prologue
    .line 696
    iget-boolean v0, p0, Lcom/app/common/net/UHttp;->mLetGo:Z

    return v0
.end method

.method public setError(Z)V
    .locals 0
    .parameter "error"

    .prologue
    .line 700
    iput-boolean p1, p0, Lcom/app/common/net/UHttp;->mErrorFlag:Z

    .line 701
    return-void
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 704
    iput-object p1, p0, Lcom/app/common/net/UHttp;->mErrorMsg:Ljava/lang/String;

    .line 705
    return-void
.end method

.method public setLetGo(Z)V
    .locals 0
    .parameter "go"

    .prologue
    .line 692
    iput-boolean p1, p0, Lcom/app/common/net/UHttp;->mLetGo:Z

    .line 693
    return-void
.end method
