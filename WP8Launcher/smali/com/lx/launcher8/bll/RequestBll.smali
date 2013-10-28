.class public Lcom/lx/launcher8/bll/RequestBll;
.super Lcom/app/common/bll/BllXmlPull;
.source "RequestBll.java"


# static fields
.field private static reqBll:Lcom/lx/launcher8/bll/RequestBll; = null

.field private static final serialVersionUID:J = 0x4b762dfc7f7f8ba8L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/lx/launcher8/bll/RequestBll;->reqBll:Lcom/lx/launcher8/bll/RequestBll;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/app/common/bll/BllXmlPull;-><init>()V

    .line 14
    return-void
.end method

.method public static getInstance()Lcom/lx/launcher8/bll/RequestBll;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/lx/launcher8/bll/RequestBll;->reqBll:Lcom/lx/launcher8/bll/RequestBll;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/lx/launcher8/bll/RequestBll;

    invoke-direct {v0}, Lcom/lx/launcher8/bll/RequestBll;-><init>()V

    sput-object v0, Lcom/lx/launcher8/bll/RequestBll;->reqBll:Lcom/lx/launcher8/bll/RequestBll;

    .line 20
    :cond_0
    sget-object v0, Lcom/lx/launcher8/bll/RequestBll;->reqBll:Lcom/lx/launcher8/bll/RequestBll;

    return-object v0
.end method


# virtual methods
.method public getInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/lx/launcher8/bll/RequestBll;
    .locals 2
    .parameter "context"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 24
    new-instance v0, Lcom/lx/launcher8/bll/RequestBll;

    invoke-direct {v0}, Lcom/lx/launcher8/bll/RequestBll;-><init>()V

    .line 25
    .local v0, bll:Lcom/lx/launcher8/bll/RequestBll;
    iget-object v1, p0, Lcom/lx/launcher8/bll/RequestBll;->mPage:Lcom/app/common/bll/CPage;

    invoke-static {v0, p1, p2, p3, v1}, Lcom/app/common/bll/BllObject;->Get(Lcom/app/common/bll/BllXmlPull;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/app/common/bll/CPage;)Lcom/app/common/bll/BllXmlPull;

    .line 26
    const/4 v1, 0x0

    return-object v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method
