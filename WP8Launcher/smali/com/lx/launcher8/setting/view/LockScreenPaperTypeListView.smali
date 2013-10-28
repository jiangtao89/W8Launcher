.class public Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;
.super Ljava/lang/Object;
.source "LockScreenPaperTypeListView.java"

# interfaces
.implements Lcom/lx/launcher8/setting/view/SettingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;

.field private gapL:I

.field private gapS:I

.field private gridView:Landroid/widget/GridView;

.field private h:I

.field private imageLoader:Lcom/lx/launcher8/util/ImageLoader;

.field private isLoaded:Z

.field private isLoading:Z

.field private mAct:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mMainView:Landroid/view/View;

.field private onLoadingOverListener:Lcom/lx/launcher8/task/OnLoadingOverListener;

.field private final savePath:Ljava/lang/String;

.field private screenHeight:I

.field private screenWidth:I

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

.field private w:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .parameter "act"

    .prologue
    const/4 v3, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lx/launcher8/util/BasePath;->getInternalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lockscreenpapertypelist.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->savePath:Ljava/lang/String;

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->typeList:Ljava/util/List;

    .line 66
    iput-boolean v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->isLoading:Z

    .line 68
    iput-boolean v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->isLoaded:Z

    .line 204
    new-instance v1, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$1;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$1;-><init>(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;)V

    iput-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->onLoadingOverListener:Lcom/lx/launcher8/task/OnLoadingOverListener;

    .line 71
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->mAct:Landroid/app/Activity;

    .line 72
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->mContext:Landroid/content/Context;

    .line 74
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 75
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->screenWidth:I

    .line 76
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->screenHeight:I

    .line 78
    invoke-static {}, Lcom/lx/launcher8/util/ImageLoader;->getInstance()Lcom/lx/launcher8/util/ImageLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->imageLoader:Lcom/lx/launcher8/util/ImageLoader;

    .line 80
    invoke-direct {p0}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->mMainView:Landroid/view/View;

    .line 82
    invoke-direct {p0}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->initTypeList()V

    .line 83
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->typeList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 84
    new-instance v1, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;-><init>(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;)V

    iput-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->adapter:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;

    .line 85
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->gridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->adapter:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;)Lcom/lx/launcher8/util/ImageLoader;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->imageLoader:Lcom/lx/launcher8/util/ImageLoader;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;)I
    .locals 1
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->screenWidth:I

    return v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;)I
    .locals 1
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->screenHeight:I

    return v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->typeList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;)I
    .locals 1
    .parameter

    .prologue
    .line 108
    iget v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->w:I

    return v0
.end method

.method static synthetic access$6(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;)I
    .locals 1
    .parameter

    .prologue
    .line 106
    iget v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->gapS:I

    return v0
.end method

.method static synthetic access$7(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;)I
    .locals 1
    .parameter

    .prologue
    .line 109
    iget v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->h:I

    return v0
.end method

.method static synthetic access$8(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->mAct:Landroid/app/Activity;

    return-object v0
.end method

.method private createGrid(I)Landroid/widget/GridView;
    .locals 6
    .parameter "column"

    .prologue
    .line 112
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->mContext:Landroid/content/Context;

    const/high16 v3, 0x4000

    invoke-static {v2, v3}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->gapS:I

    .line 113
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->mContext:Landroid/content/Context;

    const/high16 v3, 0x4140

    invoke-static {v2, v3}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->gapL:I

    .line 114
    iget v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->screenWidth:I

    .line 116
    .local v1, width:I
    iget v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->gapL:I

    add-int/lit8 v3, p1, 0x1

    mul-int/2addr v2, v3

    sub-int v2, v1, v2

    div-int/2addr v2, p1

    iget v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->gapS:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->w:I

    .line 117
    iget v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->w:I

    mul-int/lit8 v2, v2, 0x74

    div-int/lit16 v2, v2, 0x93

    iput v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->h:I

    .line 118
    new-instance v0, Landroid/widget/GridView;

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 119
    .local v0, view:Landroid/widget/GridView;
    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 120
    iget v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->gapL:I

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 121
    iget v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->gapL:I

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 122
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 123
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setFadingEdgeLength(I)V

    .line 124
    iget v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->gapL:I

    iget v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->gapL:I

    iget v4, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->gapL:I

    iget v5, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->gapL:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 125
    const/high16 v2, 0x200

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setScrollBarStyle(I)V

    .line 126
    return-object v0
.end method

.method private createView()Landroid/view/View;
    .locals 5

    .prologue
    .line 90
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->createGrid(I)Landroid/widget/GridView;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->gridView:Landroid/widget/GridView;

    .line 97
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 98
    .local v0, ll:Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 99
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->gridView:Landroid/widget/GridView;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/high16 v4, 0x3f80

    invoke-static {v2, v3, v4}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
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

    .line 185
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->mContext:Landroid/content/Context;

    const-string v7, "isFirstLoad"

    invoke-static {v6, v7, v8}, Lcom/app/common/utils/UPreference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 186
    .local v2, isFirstLoad:Z
    if-eqz v2, :cond_1

    .line 187
    new-array v1, v9, [I

    fill-array-data v1, :array_0

    .line 188
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

    .line 189
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

    .line 190
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

    .line 191
    .local v5, urls:[Ljava/lang/String;
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->typeList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 192
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v6, v1

    if-lt v0, v6, :cond_0

    .line 202
    .end local v0           #i:I
    .end local v1           #ids:[I
    .end local v3           #names:[Ljava/lang/String;
    .end local v5           #urls:[Ljava/lang/String;
    :goto_1
    return-void

    .line 193
    .restart local v0       #i:I
    .restart local v1       #ids:[I
    .restart local v3       #names:[Ljava/lang/String;
    .restart local v5       #urls:[Ljava/lang/String;
    :cond_0
    new-instance v4, Lcom/lx/launcher8/setting/bean/TypeInfo;

    invoke-direct {v4}, Lcom/lx/launcher8/setting/bean/TypeInfo;-><init>()V

    .line 194
    .local v4, typeInfo:Lcom/lx/launcher8/setting/bean/TypeInfo;
    aget v6, v1, v0

    invoke-virtual {v4, v6}, Lcom/lx/launcher8/setting/bean/TypeInfo;->setClassid(I)V

    .line 195
    aget-object v6, v3, v0

    invoke-virtual {v4, v6}, Lcom/lx/launcher8/setting/bean/TypeInfo;->setClassname(Ljava/lang/String;)V

    .line 196
    aget-object v6, v5, v0

    invoke-virtual {v4, v6}, Lcom/lx/launcher8/setting/bean/TypeInfo;->setImgurl(Ljava/lang/String;)V

    .line 197
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->typeList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    .end local v0           #i:I
    .end local v1           #ids:[I
    .end local v3           #names:[Ljava/lang/String;
    .end local v4           #typeInfo:Lcom/lx/launcher8/setting/bean/TypeInfo;
    .end local v5           #urls:[Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->savePath:Ljava/lang/String;

    invoke-static {v6}, Lcom/app/common/utils/UObjectIO;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    iput-object v6, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->typeList:Ljava/util/List;

    goto :goto_1

    .line 187
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
    .locals 2

    .prologue
    .line 130
    new-instance v0, Lcom/lx/launcher8/task/PaperTypeListTask;

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lx/launcher8/task/PaperTypeListTask;-><init>(Landroid/content/Context;)V

    const-string v1, "http://client.anall.cn/wp8/PicClass.aspx"

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/task/PaperTypeListTask;->setUrl(Ljava/lang/String;)Lcom/lx/launcher8/task/PaperTypeListTask;

    move-result-object v0

    const-string v1, "typeid=2"

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/task/PaperTypeListTask;->setParams(Ljava/lang/String;)Lcom/lx/launcher8/task/PaperTypeListTask;

    move-result-object v0

    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->onLoadingOverListener:Lcom/lx/launcher8/task/OnLoadingOverListener;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/task/PaperTypeListTask;->setOnLoadingOverListener(Lcom/lx/launcher8/task/OnLoadingOverListener;)Lcom/lx/launcher8/task/PaperTypeListTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/task/PaperTypeListTask;->exec()Z

    .line 131
    return-void
.end method


# virtual methods
.method public getBottomBtns()[Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public onBack()Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public onLoadingListOver(Lcom/app/common/bll/BllXmlPull;)V
    .locals 5
    .parameter "bll"

    .prologue
    const/4 v4, 0x0

    .line 134
    iput-boolean v4, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->isLoading:Z

    .line 135
    if-nez p1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    const/4 v1, 0x0

    .line 137
    .local v1, tpList:Ljava/util/List;,"Ljava/util/List<Lcom/lx/launcher8/setting/bean/TypeInfo;>;"
    instance-of v2, p1, Lcom/lx/launcher8/bll/PaperTypeListBll;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 138
    check-cast v0, Lcom/lx/launcher8/bll/PaperTypeListBll;

    .line 139
    .local v0, paperTypeListBll:Lcom/lx/launcher8/bll/PaperTypeListBll;
    iget-object v1, v0, Lcom/lx/launcher8/bll/PaperTypeListBll;->typeInfoList:Ljava/util/List;

    .line 141
    .end local v0           #paperTypeListBll:Lcom/lx/launcher8/bll/PaperTypeListBll;
    :cond_2
    if-eqz v1, :cond_0

    .line 146
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->isLoaded:Z

    .line 147
    iput-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->typeList:Ljava/util/List;

    .line 148
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->adapter:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->adapter:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;->notifyDataSetChanged()V

    .line 149
    :cond_3
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->typeList:Ljava/util/List;

    iget-object v3, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->savePath:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/app/common/utils/UObjectIO;->saveObject(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->mContext:Landroid/content/Context;

    const-string v3, "isFirstLoad"

    invoke-static {v2, v3, v4}, Lcom/app/common/utils/UPreference;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->isLoading:Z

    if-eqz v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-boolean v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->isLoaded:Z

    if-nez v0, :cond_0

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->isLoading:Z

    .line 160
    invoke-direct {p0}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->loadTypeList()V

    goto :goto_0
.end method

.method public onViewMovingFront()V
    .locals 0

    .prologue
    .line 349
    return-void
.end method
