.class public Lcom/lx/launcher8/image/ImageBrower;
.super Landroid/app/Activity;
.source "ImageBrower.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/image/ImageBrower$ImageAdapter;,
        Lcom/lx/launcher8/image/ImageBrower$ThreadHandler;
    }
.end annotation


# static fields
.field static final MSG_THREAD_IMAGE:I = 0x2

.field static final MSG_THREAD_LIST:I = 0x1

.field static final MSG_UI_IMAGE:I = 0x2

.field static final MSG_UI_LIST:I = 0x1


# instance fields
.field private mAdpater:Lcom/lx/launcher8/image/ImageBrower$ImageAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mThread:Landroid/os/HandlerThread;

.field private mThreadHandler:Lcom/lx/launcher8/image/ImageBrower$ThreadHandler;

.field mUIHandler:Landroid/os/Handler;

.field private mhitTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 125
    new-instance v0, Lcom/lx/launcher8/image/ImageBrower$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/image/ImageBrower$1;-><init>(Lcom/lx/launcher8/image/ImageBrower;)V

    iput-object v0, p0, Lcom/lx/launcher8/image/ImageBrower;->mUIHandler:Landroid/os/Handler;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/image/ImageBrower;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/lx/launcher8/image/ImageBrower;->showHitText(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/lx/launcher8/image/ImageBrower;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/lx/launcher8/image/ImageBrower;->hideHitText()V

    return-void
.end method

.method static synthetic access$2(Lcom/lx/launcher8/image/ImageBrower;)Lcom/lx/launcher8/image/ImageBrower$ImageAdapter;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lx/launcher8/image/ImageBrower;->mAdpater:Lcom/lx/launcher8/image/ImageBrower$ImageAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/image/ImageBrower;)Lcom/lx/launcher8/image/ImageBrower$ThreadHandler;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lx/launcher8/image/ImageBrower;->mThreadHandler:Lcom/lx/launcher8/image/ImageBrower$ThreadHandler;

    return-object v0
.end method

.method private hideHitText()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lx/launcher8/image/ImageBrower;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/lx/launcher8/image/ImageBrower;->mhitTv:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    return-void
.end method

.method private showHitText(I)V
    .locals 2
    .parameter "rid"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lx/launcher8/image/ImageBrower;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/lx/launcher8/image/ImageBrower;->mhitTv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/lx/launcher8/image/ImageBrower;->mhitTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 118
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v2, 0x1030009

    invoke-virtual {p0, v2}, Lcom/lx/launcher8/image/ImageBrower;->setTheme(I)V

    .line 51
    invoke-virtual {p0, v5}, Lcom/lx/launcher8/image/ImageBrower;->setResult(I)V

    .line 53
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 54
    .local v1, frame:Landroid/widget/FrameLayout;
    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lx/launcher8/image/ImageBrower;->mListView:Landroid/widget/ListView;

    .line 55
    iget-object v2, p0, Lcom/lx/launcher8/image/ImageBrower;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 56
    iget-object v2, p0, Lcom/lx/launcher8/image/ImageBrower;->mListView:Landroid/widget/ListView;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 57
    iget-object v2, p0, Lcom/lx/launcher8/image/ImageBrower;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 58
    new-instance v2, Lcom/lx/launcher8/image/ImageBrower$ImageAdapter;

    invoke-virtual {p0}, Lcom/lx/launcher8/image/ImageBrower;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/lx/launcher8/image/ImageBrower$ImageAdapter;-><init>(Lcom/lx/launcher8/image/ImageBrower;Landroid/view/LayoutInflater;)V

    iput-object v2, p0, Lcom/lx/launcher8/image/ImageBrower;->mAdpater:Lcom/lx/launcher8/image/ImageBrower$ImageAdapter;

    .line 59
    iget-object v2, p0, Lcom/lx/launcher8/image/ImageBrower;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/lx/launcher8/image/ImageBrower;->mAdpater:Lcom/lx/launcher8/image/ImageBrower$ImageAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lx/launcher8/image/ImageBrower;->mhitTv:Landroid/widget/TextView;

    .line 61
    iget-object v2, p0, Lcom/lx/launcher8/image/ImageBrower;->mhitTv:Landroid/widget/TextView;

    const/high16 v3, 0x4180

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 62
    iget-object v2, p0, Lcom/lx/launcher8/image/ImageBrower;->mhitTv:Landroid/widget/TextView;

    const v3, -0x737374

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    iget-object v2, p0, Lcom/lx/launcher8/image/ImageBrower;->mhitTv:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 65
    .local v0, flp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 66
    iget-object v2, p0, Lcom/lx/launcher8/image/ImageBrower;->mhitTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    invoke-virtual {p0, v1}, Lcom/lx/launcher8/image/ImageBrower;->setContentView(Landroid/view/View;)V

    .line 69
    iget-object v2, p0, Lcom/lx/launcher8/image/ImageBrower;->mListView:Landroid/widget/ListView;

    new-instance v3, Lcom/lx/launcher8/image/ImageBrower$2;

    invoke-direct {v3, p0}, Lcom/lx/launcher8/image/ImageBrower$2;-><init>(Lcom/lx/launcher8/image/ImageBrower;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 80
    iget-object v2, p0, Lcom/lx/launcher8/image/ImageBrower;->mhitTv:Landroid/widget/TextView;

    new-instance v3, Lcom/lx/launcher8/image/ImageBrower$3;

    invoke-direct {v3, p0}, Lcom/lx/launcher8/image/ImageBrower$3;-><init>(Lcom/lx/launcher8/image/ImageBrower;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 112
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 92
    iget-object v0, p0, Lcom/lx/launcher8/image/ImageBrower;->mThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "image"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lx/launcher8/image/ImageBrower;->mThread:Landroid/os/HandlerThread;

    .line 94
    iget-object v0, p0, Lcom/lx/launcher8/image/ImageBrower;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 96
    :cond_0
    new-instance v0, Lcom/lx/launcher8/image/ImageBrower$ThreadHandler;

    iget-object v1, p0, Lcom/lx/launcher8/image/ImageBrower;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lx/launcher8/image/ImageBrower$ThreadHandler;-><init>(Lcom/lx/launcher8/image/ImageBrower;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lx/launcher8/image/ImageBrower;->mThreadHandler:Lcom/lx/launcher8/image/ImageBrower$ThreadHandler;

    .line 97
    iget-object v0, p0, Lcom/lx/launcher8/image/ImageBrower;->mThreadHandler:Lcom/lx/launcher8/image/ImageBrower$ThreadHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/image/ImageBrower$ThreadHandler;->sendEmptyMessage(I)Z

    .line 98
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 103
    iget-object v0, p0, Lcom/lx/launcher8/image/ImageBrower;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/lx/launcher8/image/ImageBrower;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lx/launcher8/image/ImageBrower;->mThread:Landroid/os/HandlerThread;

    .line 107
    :cond_0
    return-void
.end method
