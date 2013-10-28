.class public Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;
.super Ljava/lang/Object;
.source "LockScreenPaperTypeListView.java"

# interfaces
.implements Lcom/lx/launcher8/setting/view/SettingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter;

.field private bottomBtns:[Landroid/widget/LinearLayout;

.field private isLoaded:Z

.field private isLoading:Z

.field private listView:Landroid/widget/ListView;

.field private loadingText:Lcom/lx/launcher8/view/LoadingText;

.field private mAct:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

.field private mContext:Landroid/content/Context;

.field private mMainView:Landroid/view/View;

.field private mPaperType:I

.field private onLoadingOverListener:Lcom/lx/launcher8/task/OnLoadingOverListener;

.field private final savePath:Ljava/lang/String;

.field private typeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lx/launcher8/setting/bean/TypeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;I)V
    .locals 2
    .parameter "act"
    .parameter "paperType"

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->typeList:Ljava/util/List;

    .line 56
    iput-boolean v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->isLoading:Z

    .line 58
    iput-boolean v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->isLoaded:Z

    .line 184
    new-instance v0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$1;-><init>(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->onLoadingOverListener:Lcom/lx/launcher8/task/OnLoadingOverListener;

    .line 62
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->mAct:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    .line 63
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->mContext:Landroid/content/Context;

    .line 64
    iput p2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->mPaperType:I

    .line 65
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->mPaperType:I

    invoke-static {v0}, Lcom/lx/launcher8/util/CachePathUtil;->getOnlineCacheCate(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->savePath:Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->createView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->mMainView:Landroid/view/View;

    .line 69
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->initTypeList()V

    .line 70
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->typeList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter;-><init>(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;)V

    iput-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->adapter:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter;

    .line 72
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->adapter:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->typeList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;)Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->mAct:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;)I
    .locals 1
    .parameter

    .prologue
    .line 59
    iget v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->mPaperType:I

    return v0
.end method

.method private createView()Landroid/view/View;
    .locals 10

    .prologue
    const/16 v9, 0x11

    const/4 v8, -0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 77
    new-instance v4, Landroid/widget/ListView;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->listView:Landroid/widget/ListView;

    .line 78
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->listView:Landroid/widget/ListView;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 80
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->listView:Landroid/widget/ListView;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 82
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 83
    .local v3, tv:Landroid/widget/TextView;
    const/4 v4, 0x2

    const/high16 v5, 0x4248

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 84
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->mAct:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    iget v4, v4, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mTitleColorValue:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->mContext:Landroid/content/Context;

    const/high16 v5, 0x4120

    invoke-static {v4, v5}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v4

    float-to-int v1, v4

    .line 86
    .local v1, padding:I
    invoke-virtual {v3, v1, v6, v1, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 87
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0267

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    new-instance v4, Lcom/lx/launcher8/view/LoadingText;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/lx/launcher8/view/LoadingText;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    .line 90
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    invoke-virtual {v4, v9}, Lcom/lx/launcher8/view/LoadingText;->setGravity(I)V

    .line 91
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    iget-object v5, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0266

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->mAct:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    iget v6, v6, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mTitleColorValue:I

    invoke-virtual {v4, v5, v6}, Lcom/lx/launcher8/view/LoadingText;->setText(Ljava/lang/String;I)V

    .line 92
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/lx/launcher8/view/LoadingText;->setVisibility(I)V

    .line 94
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 95
    .local v0, ll:Landroid/widget/LinearLayout;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 96
    invoke-static {v8, v7}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->listView:Landroid/widget/ListView;

    const/high16 v5, 0x3f80

    invoke-static {v8, v7, v5}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    invoke-static {v8, v7}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 99
    .local v2, params:Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 100
    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->loadingText:Lcom/lx/launcher8/view/LoadingText;

    invoke-virtual {v0, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    return-object v0
.end method

.method private initTypeList()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x1

    .line 165
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->mContext:Landroid/content/Context;

    const-string v7, "isFirstLoad"

    invoke-static {v6, v7, v8}, Lcom/app/common/utils/UPreference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 166
    .local v2, isFirstLoad:Z
    if-eqz v2, :cond_1

    .line 167
    new-array v1, v9, [I

    fill-array-data v1, :array_0

    .line 168
    .local v1, ids:[I
    new-array v3, v9, [Ljava/lang/String;

    const-string v6, "\u7f8e\u5973"

    aput-object v6, v3, v10

    const-string v6, "\u975e\u4e3b\u6d41"

    aput-object v6, v3, v8

    const-string v6, "\u4eba\u7269"

    aput-object v6, v3, v11

    const-string v6, "\u53ef\u7231"

    aput-object v6, v3, v12

    const/4 v6, 0x4

    const-string v7, "\u521b\u610f"

    aput-object v7, v3, v6

    const/4 v6, 0x5

    const-string v7, "\u98ce\u666f"

    aput-object v7, v3, v6

    const/4 v6, 0x6

    const-string v7, "\u7231\u60c5"

    aput-object v7, v3, v6

    const/4 v6, 0x7

    const-string v7, "\u52a8\u7269"

    aput-object v7, v3, v6

    .line 169
    .local v3, names:[Ljava/lang/String;
    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "classpic/classpic_3"

    aput-object v6, v5, v10

    const-string v6, "classpic/classpic_4"

    aput-object v6, v5, v8

    const-string v6, "classpic/classpic_5"

    aput-object v6, v5, v11

    const-string v6, "classpic/classpic_6"

    aput-object v6, v5, v12

    const/4 v6, 0x4

    .line 170
    const-string v7, "classpic/classpic_7"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "classpic/classpic_8"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "classpic/classpic_9"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "classpic/classpic_10"

    aput-object v7, v5, v6

    .line 171
    .local v5, urls:[Ljava/lang/String;
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->typeList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 172
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v6, v1

    if-lt v0, v6, :cond_0

    .line 182
    .end local v0           #i:I
    .end local v1           #ids:[I
    .end local v3           #names:[Ljava/lang/String;
    .end local v5           #urls:[Ljava/lang/String;
    :goto_1
    return-void

    .line 173
    .restart local v0       #i:I
    .restart local v1       #ids:[I
    .restart local v3       #names:[Ljava/lang/String;
    .restart local v5       #urls:[Ljava/lang/String;
    :cond_0
    new-instance v4, Lcom/lx/launcher8/setting/bean/TypeInfo;

    invoke-direct {v4}, Lcom/lx/launcher8/setting/bean/TypeInfo;-><init>()V

    .line 174
    .local v4, typeInfo:Lcom/lx/launcher8/setting/bean/TypeInfo;
    aget v6, v1, v0

    invoke-virtual {v4, v6}, Lcom/lx/launcher8/setting/bean/TypeInfo;->setClassid(I)V

    .line 175
    aget-object v6, v3, v0

    invoke-virtual {v4, v6}, Lcom/lx/launcher8/setting/bean/TypeInfo;->setClassname(Ljava/lang/String;)V

    .line 176
    aget-object v6, v5, v0

    invoke-virtual {v4, v6}, Lcom/lx/launcher8/setting/bean/TypeInfo;->setImgurl(Ljava/lang/String;)V

    .line 177
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->typeList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    .end local v0           #i:I
    .end local v1           #ids:[I
    .end local v3           #names:[Ljava/lang/String;
    .end local v4           #typeInfo:Lcom/lx/launcher8/setting/bean/TypeInfo;
    .end local v5           #urls:[Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->savePath:Ljava/lang/String;

    invoke-static {v6}, Lcom/app/common/utils/UObjectIO;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    iput-object v6, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->typeList:Ljava/util/List;

    goto :goto_1

    .line 167
    :array_0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private loadTypeList()V
    .locals 3

    .prologue
    .line 115
    new-instance v0, Lcom/lx/launcher8/task/PaperTypeListTask;

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lx/launcher8/task/PaperTypeListTask;-><init>(Landroid/content/Context;)V

    const-string v1, "http://client.anall.cn/wp8/PicClass.aspx"

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/task/PaperTypeListTask;->setUrl(Ljava/lang/String;)Lcom/lx/launcher8/task/PaperTypeListTask;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "typeid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->mPaperType:I

    rsub-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/task/PaperTypeListTask;->setParams(Ljava/lang/String;)Lcom/lx/launcher8/task/PaperTypeListTask;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->onLoadingOverListener:Lcom/lx/launcher8/task/OnLoadingOverListener;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/task/PaperTypeListTask;->setOnLoadingOverListener(Lcom/lx/launcher8/task/OnLoadingOverListener;)Lcom/lx/launcher8/task/PaperTypeListTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/task/PaperTypeListTask;->exec()Z

    .line 116
    return-void
.end method


# virtual methods
.method public getBottomBtns()[Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->bottomBtns:[Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public onBack()Z
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public onLoadingListOver(Lcom/app/common/bll/BllXmlPull;)V
    .locals 5
    .parameter "bll"

    .prologue
    const/4 v4, 0x0

    .line 119
    iput-boolean v4, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->isLoading:Z

    .line 120
    if-nez p1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    const/4 v1, 0x0

    .line 122
    .local v1, tpList:Ljava/util/List;,"Ljava/util/List<Lcom/lx/launcher8/setting/bean/TypeInfo;>;"
    instance-of v2, p1, Lcom/lx/launcher8/bll/PaperTypeListBll;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 123
    check-cast v0, Lcom/lx/launcher8/bll/PaperTypeListBll;

    .line 124
    .local v0, paperTypeListBll:Lcom/lx/launcher8/bll/PaperTypeListBll;
    iget-object v1, v0, Lcom/lx/launcher8/bll/PaperTypeListBll;->typeInfoList:Ljava/util/List;

    .line 126
    .end local v0           #paperTypeListBll:Lcom/lx/launcher8/bll/PaperTypeListBll;
    :cond_2
    if-eqz v1, :cond_0

    .line 131
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->isLoaded:Z

    .line 132
    iput-object v1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->typeList:Ljava/util/List;

    .line 133
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->adapter:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->adapter:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter;->notifyDataSetChanged()V

    .line 134
    :cond_3
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->typeList:Ljava/util/List;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->savePath:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/app/common/utils/UObjectIO;->saveObject(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->mContext:Landroid/content/Context;

    const-string v3, "isFirstLoad"

    invoke-static {v2, v3, v4}, Lcom/app/common/utils/UPreference;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public onViewMovingFront()V
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->isLoading:Z

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->isLoaded:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->adapter:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->adapter:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->isLoading:Z

    .line 111
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->loadTypeList()V

    goto :goto_0
.end method
