.class public Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;
.super Ljava/lang/Object;
.source "LockScreenPaperSearchView.java"

# interfaces
.implements Lcom/lx/launcher8/setting/view/SettingView;


# instance fields
.field private listener:Lcom/lx/launcher8/task/OnLoadingOverListener;

.field private mAct:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mKeywordsFlow:Lcom/lx/launcher8/view/KeywordsFlow;

.field private mMainView:Landroid/view/View;

.field private searchBox:Landroid/widget/EditText;

.field private searchBtn:Landroid/widget/ImageView;

.field private searchKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "act"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->searchKeys:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView$1;-><init>(Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->listener:Lcom/lx/launcher8/task/OnLoadingOverListener;

    .line 43
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->mAct:Landroid/app/Activity;

    .line 44
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->mContext:Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->createView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->mMainView:Landroid/view/View;

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->searchKeys:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;)Lcom/lx/launcher8/view/KeywordsFlow;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->mKeywordsFlow:Lcom/lx/launcher8/view/KeywordsFlow;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->searchKeys:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->searchBox:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->search()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 4

    .prologue
    .line 54
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030052

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, view:Landroid/view/View;
    const v1, 0x7f09015a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->searchBox:Landroid/widget/EditText;

    .line 56
    const v1, 0x7f09015b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->searchBtn:Landroid/widget/ImageView;

    .line 57
    const v1, 0x7f09015c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/view/KeywordsFlow;

    iput-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->mKeywordsFlow:Lcom/lx/launcher8/view/KeywordsFlow;

    .line 58
    return-object v0
.end method

.method private loadingSearchKeys()V
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lcom/lx/launcher8/task/SearchKeyTask;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lx/launcher8/task/SearchKeyTask;-><init>(Landroid/content/Context;)V

    const-string v1, "http://client.anall.cn/wp8/SearchKey.aspx"

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/task/SearchKeyTask;->setUrl(Ljava/lang/String;)Lcom/lx/launcher8/task/SearchKeyTask;

    move-result-object v0

    const-string v1, "classid=1"

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/task/SearchKeyTask;->setParams(Ljava/lang/String;)Lcom/lx/launcher8/task/SearchKeyTask;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->listener:Lcom/lx/launcher8/task/OnLoadingOverListener;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/task/SearchKeyTask;->setOnLoadingOverListener(Lcom/lx/launcher8/task/OnLoadingOverListener;)Lcom/lx/launcher8/task/SearchKeyTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/task/SearchKeyTask;->exec()Z

    .line 88
    return-void
.end method

.method private search()V
    .locals 5

    .prologue
    .line 91
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->searchBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, text:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->mAct:Landroid/app/Activity;

    const v4, 0x7f0a0269

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/app/common/utils/UMessage;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 99
    :goto_0
    return-void

    .line 96
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->mContext:Landroid/content/Context;

    const-class v3, Lcom/lx/launcher8/setting/LockScreenPaperListAct;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "search_key"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->mAct:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public getBottomBtns()[Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public onBack()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->mKeywordsFlow:Lcom/lx/launcher8/view/KeywordsFlow;

    new-instance v1, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView$2;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView$2;-><init>(Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;)V

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/view/KeywordsFlow;->setOnItemClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-direct {p0}, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->loadingSearchKeys()V

    .line 77
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->searchBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView$3;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView$3;-><init>(Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method

.method public onViewMovingFront()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method
