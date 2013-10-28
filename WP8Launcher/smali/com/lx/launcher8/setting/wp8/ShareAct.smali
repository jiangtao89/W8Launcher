.class public Lcom/lx/launcher8/setting/wp8/ShareAct;
.super Lcom/lx/launcher8/NoSearchAct;
.source "ShareAct.java"


# instance fields
.field private btnBuy:Landroid/widget/Button;

.field private btnShare:Landroid/widget/Button;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mFromId:I

.field private mLoadingOver:Lcom/lx/launcher8/task/OnLoadingOverListener;

.field private mProPackage:Ljava/lang/String;

.field private mShareUrl:Ljava/lang/String;

.field private tvFriend:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/lx/launcher8/NoSearchAct;-><init>()V

    .line 86
    new-instance v0, Lcom/lx/launcher8/setting/wp8/ShareAct$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/ShareAct$1;-><init>(Lcom/lx/launcher8/setting/wp8/ShareAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/ShareAct;->mClickListener:Landroid/view/View$OnClickListener;

    .line 122
    new-instance v0, Lcom/lx/launcher8/setting/wp8/ShareAct$2;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/ShareAct$2;-><init>(Lcom/lx/launcher8/setting/wp8/ShareAct;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/ShareAct;->mLoadingOver:Lcom/lx/launcher8/task/OnLoadingOverListener;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/ShareAct;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ShareAct;->mProPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/ShareAct;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ShareAct;->initData()V

    return-void
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/wp8/ShareAct;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ShareAct;->mShareUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/wp8/ShareAct;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/ShareAct;->mShareUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/lx/launcher8/setting/wp8/ShareAct;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/lx/launcher8/setting/wp8/ShareAct;->setFriend(I)V

    return-void
.end method

.method static synthetic access$5(Lcom/lx/launcher8/setting/wp8/ShareAct;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/ShareAct;->mProPackage:Ljava/lang/String;

    return-void
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 79
    const-string v0, "com.lx.launcher8pro2"

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/ShareAct;->mProPackage:Ljava/lang/String;

    .line 80
    new-instance v0, Lcom/lx/launcher8/task/ShareTask;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/task/ShareTask;-><init>(Landroid/content/Context;)V

    const-string v1, "http://client.anall.cn/wp8/ShareUrl.aspx"

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/task/ShareTask;->setUrl(Ljava/lang/String;)Lcom/lx/launcher8/task/ShareTask;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/task/ShareTask;->setParams(Ljava/lang/String;)Lcom/lx/launcher8/task/ShareTask;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ShareAct;->mLoadingOver:Lcom/lx/launcher8/task/OnLoadingOverListener;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/task/ShareTask;->setOnLoadingOverListener(Lcom/lx/launcher8/task/OnLoadingOverListener;)Lcom/lx/launcher8/task/ShareTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/task/ShareTask;->exec()Z

    .line 81
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 62
    const v0, 0x7f0900c2

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/ShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/ShareAct;->btnBuy:Landroid/widget/Button;

    .line 63
    const v0, 0x7f0900c4

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/ShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/ShareAct;->btnShare:Landroid/widget/Button;

    .line 64
    const v0, 0x7f0900c3

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/ShareAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/ShareAct;->tvFriend:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ShareAct;->btnBuy:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ShareAct;->btnBuy:Landroid/widget/Button;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ShareAct;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ShareAct;->btnShare:Landroid/widget/Button;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/ShareAct;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lx/launcher8/setting/wp8/ShareAct;->setFriend(I)V

    .line 72
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ShareAct;->initData()V

    .line 73
    return-void
.end method

.method private setFriend(I)V
    .locals 7
    .parameter "nums"

    .prologue
    .line 148
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, c:Ljava/lang/String;
    const v4, 0x7f0a0277

    invoke-virtual {p0, v4}, Lcom/lx/launcher8/setting/wp8/ShareAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, value:Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 152
    .local v1, span:Landroid/text/SpannableString;
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 153
    .local v2, start:I
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const/high16 v5, -0x1

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    .line 154
    const/16 v6, 0x21

    .line 153
    invoke-virtual {v1, v4, v2, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 155
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/ShareAct;->tvFriend:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    const/16 v4, 0xa

    if-lt p1, v4, :cond_0

    .line 158
    invoke-static {}, Lcom/lx/launcher8/util/WpAdUtil;->getInstance()Lcom/lx/launcher8/util/WpAdUtil;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/lx/launcher8/util/WpAdUtil;->clearAd(Landroid/content/Context;)V

    .line 160
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/lx/launcher8/NoSearchAct;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-static {}, Lcom/lx/launcher8/AnallApp;->getContext()Lcom/lx/launcher8/AnallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/AnallApp;->getFromId()I

    move-result v0

    iput v0, p0, Lcom/lx/launcher8/setting/wp8/ShareAct;->mFromId:I

    .line 44
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/ShareAct;->mFromId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 45
    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/ShareAct;->setContentView(I)V

    .line 49
    :goto_0
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ShareAct;->initView()V

    .line 50
    return-void

    .line 47
    :cond_0
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/ShareAct;->setContentView(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/lx/launcher8/NoSearchAct;->onResume()V

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/ShareAct;->setRequestedOrientation(I)V

    .line 56
    return-void
.end method
