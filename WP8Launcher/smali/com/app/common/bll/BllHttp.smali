.class public Lcom/app/common/bll/BllHttp;
.super Ljava/lang/Object;
.source "BllHttp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static GetHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/app/common/net/UHttp;
    .locals 6
    .parameter "context"
    .parameter "url"
    .parameter "params"
    .parameter "IsLogin"

    .prologue
    .line 64
    const/4 v1, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/app/common/bll/BllHttp;->getHttp(Landroid/content/Context;Lcom/app/common/bll/CPage;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/app/common/net/UHttp;

    move-result-object v0

    return-object v0
.end method

.method public static getHttp(Landroid/content/Context;Lcom/app/common/bll/CPage;Ljava/lang/String;Ljava/lang/String;)Lcom/app/common/net/UHttp;
    .locals 6
    .parameter "context"
    .parameter "page"
    .parameter "url"
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    .line 43
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/app/common/bll/BllHttp;->getHttp(Landroid/content/Context;Lcom/app/common/bll/CPage;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/app/common/net/UHttp;

    move-result-object v0

    return-object v0
.end method

.method public static getHttp(Landroid/content/Context;Lcom/app/common/bll/CPage;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/app/common/net/UHttp;
    .locals 3
    .parameter "context"
    .parameter "page"
    .parameter "url"
    .parameter "params"
    .parameter "IsNeedLogin"
    .parameter "IsPost"

    .prologue
    .line 19
    if-nez p1, :cond_0

    .line 20
    new-instance p1, Lcom/app/common/bll/CPage;

    .end local p1
    invoke-direct {p1}, Lcom/app/common/bll/CPage;-><init>()V

    .line 22
    .restart local p1
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 25
    :cond_1
    if-eqz p1, :cond_2

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "p="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/app/common/bll/CPage;->getP()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&total="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/app/common/bll/CPage;->getTotal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&pagesize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 27
    invoke-virtual {p1}, Lcom/app/common/bll/CPage;->getPagesize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/app/common/net/UHttp;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 31
    :cond_2
    const/4 v0, 0x0

    .line 35
    .local v0, http:Lcom/app/common/net/UHttp;
    if-eqz p5, :cond_3

    .line 36
    invoke-static {p0, p2, p3}, Lcom/app/common/net/UHttp;->post(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/app/common/net/UHttp;

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    .line 38
    :cond_3
    invoke-static {p0, p2, p3}, Lcom/app/common/net/UHttp;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/app/common/net/UHttp;

    move-result-object v0

    goto :goto_0
.end method

.method public static getHttp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/app/common/net/UHttp;
    .locals 6
    .parameter "context"
    .parameter "url"
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    .line 47
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/app/common/bll/BllHttp;->getHttp(Landroid/content/Context;Lcom/app/common/bll/CPage;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/app/common/net/UHttp;

    move-result-object v0

    return-object v0
.end method

.method public static getHttp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/app/common/net/UHttp;
    .locals 6
    .parameter "context"
    .parameter "url"
    .parameter "params"
    .parameter "IsLogin"

    .prologue
    .line 51
    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/app/common/bll/BllHttp;->getHttp(Landroid/content/Context;Lcom/app/common/bll/CPage;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/app/common/net/UHttp;

    move-result-object v0

    return-object v0
.end method

.method public static getHttpPost(Landroid/content/Context;Lcom/app/common/bll/CPage;Ljava/lang/String;Ljava/lang/String;)Lcom/app/common/net/UHttp;
    .locals 6
    .parameter "context"
    .parameter "page"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 56
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/app/common/bll/BllHttp;->getHttp(Landroid/content/Context;Lcom/app/common/bll/CPage;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/app/common/net/UHttp;

    move-result-object v0

    return-object v0
.end method

.method public static getHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/app/common/net/UHttp;
    .locals 6
    .parameter "context"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 60
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/app/common/bll/BllHttp;->getHttp(Landroid/content/Context;Lcom/app/common/bll/CPage;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/app/common/net/UHttp;

    move-result-object v0

    return-object v0
.end method
