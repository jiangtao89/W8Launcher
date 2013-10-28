.class public Lcom/lx/launcher8/adapter/AppAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/adapter/AppAdapter$AppCharComparator;,
        Lcom/lx/launcher8/adapter/AppAdapter$AppFrequencyComparator;,
        Lcom/lx/launcher8/adapter/AppAdapter$AppTimeComparator;,
        Lcom/lx/launcher8/adapter/AppAdapter$ArrayFilter;,
        Lcom/lx/launcher8/adapter/AppAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final INDEX_ID:I = -0x63


# instance fields
.field private indexBlod:Z

.field private isSearch:Z

.field private isShowIndex:Z

.field private mAppColor:I

.field private mAppTextColor:I

.field private mBackDrawable:Landroid/graphics/drawable/LayerDrawable;

.field private mColorDrawable:Lcom/lx/launcher8/view/ColorDrawable;

.field private mContext:Landroid/content/Context;

.field private mDisStyle:I

.field private mFilter:Lcom/lx/launcher8/adapter/AppAdapter$ArrayFilter;

.field private mForeColor:I

.field final mImgSize:I

.field private mIndexColor:I

.field private final mLock:Ljava/lang/Object;

.field final mNormalPad:I

.field private mNotifyOnChange:Z

.field private mObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/anall/app/bean/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/anall/app/bean/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPaperDrawable:Lcom/lx/launcher8/view/ColorDrawable;

.field final mWPad:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/high16 v1, -0x100

    .line 89
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mLock:Ljava/lang/Object;

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mNotifyOnChange:Z

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/lx/launcher8/adapter/AppAdapter;->init(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 91
    const/high16 v0, 0x425c

    invoke-static {p1, v0}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mImgSize:I

    .line 92
    const/high16 v0, 0x4040

    invoke-static {p1, v0}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mNormalPad:I

    .line 93
    const/high16 v0, 0x40e0

    invoke-static {p1, v0}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mWPad:I

    .line 94
    new-instance v0, Lcom/lx/launcher8/view/ColorDrawable;

    invoke-direct {v0, v1}, Lcom/lx/launcher8/view/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mColorDrawable:Lcom/lx/launcher8/view/ColorDrawable;

    .line 95
    new-instance v0, Lcom/lx/launcher8/view/ColorDrawable;

    invoke-direct {v0, v1}, Lcom/lx/launcher8/view/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mPaperDrawable:Lcom/lx/launcher8/view/ColorDrawable;

    .line 96
    iget-object v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mColorDrawable:Lcom/lx/launcher8/view/ColorDrawable;

    iget v1, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mImgSize:I

    iget v2, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mImgSize:I

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/lx/launcher8/view/ColorDrawable;->setBounds(IIII)V

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mIndexColor:I

    .line 98
    const/16 v0, 0xff

    iput v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mForeColor:I

    .line 99
    return-void
.end method

.method static synthetic access$1(Lcom/lx/launcher8/adapter/AppAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mOriginalValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lx/launcher8/adapter/AppAdapter;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lx/launcher8/adapter/AppAdapter;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mObjects:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lx/launcher8/adapter/AppAdapter;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mOriginalValues:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$5(Lcom/lx/launcher8/adapter/AppAdapter;)Z
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->isSearch:Z

    return v0
.end method

.method static synthetic access$6(Lcom/lx/launcher8/adapter/AppAdapter;)I
    .locals 1
    .parameter

    .prologue
    .line 62
    iget v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mDisStyle:I

    return v0
.end method

.method static synthetic access$7(Lcom/lx/launcher8/adapter/AppAdapter;)Z
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->isShowIndex:Z

    return v0
.end method

.method static synthetic access$8(Lcom/lx/launcher8/adapter/AppAdapter;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mObjects:Ljava/util/List;

    return-void
.end method

.method private init(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/anall/app/bean/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 347
    .local p2, objects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    iput-object p1, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mContext:Landroid/content/Context;

    .line 348
    iput-object p2, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mOriginalValues:Ljava/util/ArrayList;

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->isShowIndex:Z

    .line 350
    const/4 v0, -0x1

    iput v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mAppTextColor:I

    .line 351
    return-void
.end method


# virtual methods
.method public add(Lcom/anall/app/bean/AppInfo;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 113
    iget-object v1, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-boolean v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lx/launcher8/adapter/AppAdapter;->notifyDataSetChanged()V

    .line 113
    :cond_0
    monitor-exit v1

    .line 117
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public add(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/anall/app/bean/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    iget-object v1, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 122
    iget-boolean v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lx/launcher8/adapter/AppAdapter;->notifyDataSetChanged()V

    .line 120
    :cond_0
    monitor-exit v1

    .line 124
    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 165
    iget-object v1, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 165
    monitor-exit v1

    .line 169
    :cond_0
    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createIndex(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/anall/app/bean/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    const-wide/16 v7, -0x63

    .line 278
    const/16 v3, 0x30

    .line 279
    .local v3, lastChar:C
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 280
    .local v4, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v4, :cond_0

    .line 294
    return-void

    .line 281
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anall/app/bean/AppInfo;

    .line 282
    .local v2, info:Lcom/anall/app/bean/AppInfo;
    iget-wide v5, v2, Lcom/anall/app/bean/AppInfo;->id:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 283
    iget-char v3, v2, Lcom/anall/app/bean/AppInfo;->firstChar:C

    .line 285
    :cond_1
    iget-char v5, v2, Lcom/anall/app/bean/AppInfo;->firstChar:C

    if-ne v5, v3, :cond_2

    .line 280
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_2
    iget-char v3, v2, Lcom/anall/app/bean/AppInfo;->firstChar:C

    .line 288
    new-instance v1, Lcom/anall/app/bean/AppInfo;

    invoke-direct {v1}, Lcom/anall/app/bean/AppInfo;-><init>()V

    .line 289
    .local v1, indInfo:Lcom/anall/app/bean/AppInfo;
    iput-wide v7, v1, Lcom/anall/app/bean/AppInfo;->id:J

    .line 290
    iput-char v3, v1, Lcom/anall/app/bean/AppInfo;->firstChar:C

    .line 291
    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 292
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public existsIndex(C)Z
    .locals 6
    .parameter "c"

    .prologue
    const/4 v3, 0x0

    .line 316
    iget-object v4, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mObjects:Ljava/util/List;

    if-nez v4, :cond_0

    .line 326
    :goto_0
    return v3

    .line 318
    :cond_0
    iget-object v4, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mObjects:Ljava/util/List;

    monitor-enter v4

    .line 319
    :try_start_0
    iget-object v5, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 320
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v2, :cond_1

    .line 318
    monitor-exit v4

    goto :goto_0

    .end local v0           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 321
    .restart local v0       #i:I
    .restart local v2       #size:I
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anall/app/bean/AppInfo;

    .line 322
    .local v1, info:Lcom/anall/app/bean/AppInfo;
    iget-char v5, v1, Lcom/anall/app/bean/AppInfo;->firstChar:C

    if-ne v5, p1, :cond_3

    .line 323
    iget v5, v1, Lcom/anall/app/bean/AppInfo;->isVisible:I

    if-nez v5, :cond_2

    const/4 v3, 0x1

    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 320
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mObjects:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mFilter:Lcom/lx/launcher8/adapter/AppAdapter$ArrayFilter;

    if-nez v0, :cond_0

    .line 498
    new-instance v0, Lcom/lx/launcher8/adapter/AppAdapter$ArrayFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lx/launcher8/adapter/AppAdapter$ArrayFilter;-><init>(Lcom/lx/launcher8/adapter/AppAdapter;Lcom/lx/launcher8/adapter/AppAdapter$ArrayFilter;)V

    iput-object v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mFilter:Lcom/lx/launcher8/adapter/AppAdapter$ArrayFilter;

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mFilter:Lcom/lx/launcher8/adapter/AppAdapter$ArrayFilter;

    return-object v0
.end method

.method public getIndex(C)I
    .locals 6
    .parameter "c"

    .prologue
    const/4 v3, 0x0

    .line 302
    iget-object v4, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mObjects:Ljava/util/List;

    if-nez v4, :cond_0

    move v0, v3

    .line 312
    :goto_0
    return v0

    .line 304
    :cond_0
    iget-object v4, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mObjects:Ljava/util/List;

    monitor-enter v4

    .line 305
    :try_start_0
    iget-object v5, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 306
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v2, :cond_1

    .line 304
    monitor-exit v4

    move v0, v3

    .line 312
    goto :goto_0

    .line 307
    :cond_1
    iget-object v5, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anall/app/bean/AppInfo;

    .line 308
    .local v1, info:Lcom/anall/app/bean/AppInfo;
    iget-char v5, v1, Lcom/anall/app/bean/AppInfo;->firstChar:C

    if-ne v5, p1, :cond_2

    .line 309
    monitor-exit v4

    goto :goto_0

    .line 304
    .end local v0           #i:I
    .end local v1           #info:Lcom/anall/app/bean/AppInfo;
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 306
    .restart local v0       #i:I
    .restart local v1       #info:Lcom/anall/app/bean/AppInfo;
    .restart local v2       #size:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getItem(I)Lcom/anall/app/bean/AppInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anall/app/bean/AppInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lx/launcher8/adapter/AppAdapter;->getItem(I)Lcom/anall/app/bean/AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 392
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPosState(I)I
    .locals 4
    .parameter "pos"

    .prologue
    const/4 v1, -0x1

    .line 476
    iget-object v2, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mObjects:Ljava/util/List;

    if-nez v2, :cond_1

    .line 484
    :cond_0
    :goto_0
    return v1

    .line 477
    :cond_1
    iget-object v2, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 478
    .local v0, count:I
    iget-boolean v2, p0, Lcom/lx/launcher8/adapter/AppAdapter;->isShowIndex:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/lx/launcher8/adapter/AppAdapter;->isSearch:Z

    if-nez v2, :cond_0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 480
    add-int/lit8 v1, v0, -0x1

    if-ge p1, v1, :cond_2

    .line 481
    iget-object v1, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anall/app/bean/AppInfo;

    iget-char v2, v1, Lcom/anall/app/bean/AppInfo;->firstChar:C

    iget-object v1, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mObjects:Ljava/util/List;

    add-int/lit8 v3, p1, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anall/app/bean/AppInfo;

    iget-char v1, v1, Lcom/anall/app/bean/AppInfo;->firstChar:C

    if-eq v2, v1, :cond_2

    .line 482
    const/4 v1, 0x1

    goto :goto_0

    .line 484
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPosition(Lcom/anall/app/bean/AppInfo;)I
    .locals 1
    .parameter "item"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 403
    const/4 v4, 0x0

    .line 404
    .local v4, tv:Landroid/widget/TextView;
    const/4 v3, 0x0

    .line 405
    .local v3, lp:Landroid/widget/AbsListView$LayoutParams;
    if-nez p2, :cond_0

    .line 406
    new-instance v4, Landroid/widget/TextView;

    .end local v4           #tv:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 407
    .restart local v4       #tv:Landroid/widget/TextView;
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    .end local v3           #lp:Landroid/widget/AbsListView$LayoutParams;
    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v3, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 412
    .restart local v3       #lp:Landroid/widget/AbsListView$LayoutParams;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/lx/launcher8/adapter/AppAdapter;->getItem(I)Lcom/anall/app/bean/AppInfo;

    move-result-object v1

    .line 413
    .local v1, info:Lcom/anall/app/bean/AppInfo;
    const/4 v0, 0x0

    .line 417
    .local v0, d:Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/anall/app/bean/FastBitmapDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    iget-object v5, v1, Lcom/anall/app/bean/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v5}, Lcom/anall/app/bean/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 418
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    iget v5, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mForeColor:I

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 419
    iget v5, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mAppTextColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 420
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 421
    iget v5, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mNormalPad:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 422
    iget v5, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mDisStyle:I

    packed-switch v5, :pswitch_data_0

    .line 441
    iget v5, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mImgSize:I

    add-int/lit8 v5, v5, -0xa

    iput v5, v3, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 442
    iget v5, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mWPad:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 443
    iget-wide v5, v1, Lcom/anall/app/bean/AppInfo;->id:J

    const-wide/16 v7, -0x63

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    .line 444
    iget v5, v3, Landroid/widget/AbsListView$LayoutParams;->height:I

    iput v5, v3, Landroid/widget/AbsListView$LayoutParams;->width:I

    .line 445
    const/high16 v5, 0x4204

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 446
    iget-object v5, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mBackDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 447
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v6, v1, Lcom/anall/app/bean/AppInfo;->firstChar:C

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    iget-boolean v5, p0, Lcom/lx/launcher8/adapter/AppAdapter;->indexBlod:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mIndexColor:I

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 449
    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 450
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 463
    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    return-object v4

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v1           #info:Lcom/anall/app/bean/AppInfo;
    :cond_0
    move-object v4, p2

    .line 409
    check-cast v4, Landroid/widget/TextView;

    .line 410
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3           #lp:Landroid/widget/AbsListView$LayoutParams;
    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .restart local v3       #lp:Landroid/widget/AbsListView$LayoutParams;
    goto :goto_0

    .line 424
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    .restart local v1       #info:Lcom/anall/app/bean/AppInfo;
    :pswitch_0
    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 425
    const/high16 v5, 0x4140

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 426
    iget-object v5, v1, Lcom/anall/app/bean/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 428
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mColorDrawable:Lcom/lx/launcher8/view/ColorDrawable;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-direct {v2, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 429
    .local v2, ld:Landroid/graphics/drawable/LayerDrawable;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v2, v5, v6, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 430
    iget v5, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mImgSize:I

    iput v5, v3, Landroid/widget/AbsListView$LayoutParams;->height:I

    const/4 v5, -0x1

    iput v5, v3, Landroid/widget/AbsListView$LayoutParams;->width:I

    goto :goto_2

    .line 433
    .end local v2           #ld:Landroid/graphics/drawable/LayerDrawable;
    :pswitch_1
    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 434
    const/high16 v5, 0x4140

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 435
    iget-object v5, v1, Lcom/anall/app/bean/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    const/16 v5, 0x31

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 437
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 438
    iget-object v5, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mContext:Landroid/content/Context;

    const/high16 v6, 0x42aa

    invoke-static {v5, v6}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/widget/AbsListView$LayoutParams;->height:I

    const/4 v5, -0x1

    iput v5, v3, Landroid/widget/AbsListView$LayoutParams;->width:I

    goto :goto_2

    .line 448
    :cond_1
    iget v5, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mAppColor:I

    goto :goto_1

    .line 452
    :cond_2
    const/4 v5, -0x1

    iput v5, v3, Landroid/widget/AbsListView$LayoutParams;->width:I

    .line 453
    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v3, Landroid/widget/AbsListView$LayoutParams;->height:I

    iget v8, v3, Landroid/widget/AbsListView$LayoutParams;->height:I

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 454
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mColorDrawable:Lcom/lx/launcher8/view/ColorDrawable;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-direct {v2, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 455
    .restart local v2       #ld:Landroid/graphics/drawable/LayerDrawable;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v2, v5, v6, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 456
    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 457
    iget-object v5, v1, Lcom/anall/app/bean/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    const/high16 v5, 0x4190

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 459
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLines(I)V

    goto/16 :goto_2

    .line 422
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Lcom/anall/app/bean/AppInfo;I)V
    .locals 2
    .parameter "object"
    .parameter "index"

    .prologue
    .line 133
    iget-object v1, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 135
    iget-boolean v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lx/launcher8/adapter/AppAdapter;->notifyDataSetChanged()V

    .line 133
    :cond_0
    monitor-exit v1

    .line 137
    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isSearch()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->isSearch:Z

    return v0
.end method

.method public isShowIndex()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->isSearch:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mDisStyle:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->isShowIndex:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 192
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mNotifyOnChange:Z

    .line 194
    return-void
.end method

.method public remove(Lcom/anall/app/bean/AppInfo;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 145
    iget-object v1, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 145
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    iget-boolean v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lx/launcher8/adapter/AppAdapter;->notifyDataSetChanged()V

    .line 149
    :cond_0
    return-void

    .line 145
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public remove(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/anall/app/bean/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v2, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 155
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 154
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    iget-boolean v1, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mNotifyOnChange:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/lx/launcher8/adapter/AppAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 155
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anall/app/bean/AppInfo;

    .line 156
    .local v0, info:Lcom/anall/app/bean/AppInfo;
    iget-object v3, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 154
    .end local v0           #info:Lcom/anall/app/bean/AppInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setAppBackColor(I)V
    .locals 6
    .parameter "color"

    .prologue
    const/4 v1, -0x1

    .line 221
    iput p1, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mAppColor:I

    .line 222
    if-ne p1, v1, :cond_0

    const/high16 v1, -0x100

    :cond_0
    iput v1, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mIndexColor:I

    .line 223
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    .line 224
    new-instance v4, Lcom/lx/launcher8/view/ColorDrawable;

    invoke-direct {v4, p1}, Lcom/lx/launcher8/view/ColorDrawable;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 225
    new-instance v4, Lcom/lx/launcher8/view/StrokeShape;

    new-instance v5, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v5}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v4, v5, p1}, Lcom/lx/launcher8/view/StrokeShape;-><init>(Landroid/graphics/drawable/shapes/Shape;I)V

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 223
    iput-object v1, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mBackDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 227
    iget-boolean v1, p0, Lcom/lx/launcher8/adapter/AppAdapter;->indexBlod:Z

    if-nez v1, :cond_1

    .line 228
    iget-boolean v1, p0, Lcom/lx/launcher8/adapter/AppAdapter;->indexBlod:Z

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/adapter/AppAdapter;->setIndexBlod(Z)V

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mColorDrawable:Lcom/lx/launcher8/view/ColorDrawable;

    invoke-virtual {v1}, Lcom/lx/launcher8/view/ColorDrawable;->getAlpha()I

    move-result v0

    .line 234
    .local v0, alpha:I
    iget-object v1, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mColorDrawable:Lcom/lx/launcher8/view/ColorDrawable;

    invoke-virtual {v1, p1}, Lcom/lx/launcher8/view/ColorDrawable;->setColor(I)V

    .line 235
    iget-object v1, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mColorDrawable:Lcom/lx/launcher8/view/ColorDrawable;

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/view/ColorDrawable;->setAlpha(I)V

    .line 236
    iget-boolean v1, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mNotifyOnChange:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/lx/launcher8/adapter/AppAdapter;->notifyDataSetChanged()V

    .line 237
    :cond_2
    return-void
.end method

.method public setAppTextColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 247
    iput p1, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mAppTextColor:I

    .line 248
    iget-boolean v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lx/launcher8/adapter/AppAdapter;->notifyDataSetChanged()V

    .line 249
    :cond_0
    return-void
.end method

.method public setApps(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/anall/app/bean/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/anall/app/bean/AppInfo;>;"
    iget-object v1, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_0
    iput-object p1, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mOriginalValues:Ljava/util/ArrayList;

    .line 104
    iget-boolean v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lx/launcher8/adapter/AppAdapter;->notifyDataSetChanged()V

    .line 102
    :cond_0
    monitor-exit v1

    .line 106
    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBackAlpha(I)V
    .locals 1
    .parameter "a"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mColorDrawable:Lcom/lx/launcher8/view/ColorDrawable;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/view/ColorDrawable;->setAlpha(I)V

    .line 253
    iget-boolean v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lx/launcher8/adapter/AppAdapter;->notifyDataSetChanged()V

    .line 254
    :cond_0
    return-void
.end method

.method public setDisplay(I)V
    .locals 1
    .parameter "style"

    .prologue
    .line 197
    iput p1, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mDisStyle:I

    .line 198
    iget-boolean v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lx/launcher8/adapter/AppAdapter;->notifyDataSetChanged()V

    .line 199
    :cond_0
    return-void
.end method

.method public setIconAlpha(I)V
    .locals 1
    .parameter "a"

    .prologue
    .line 257
    iget v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mForeColor:I

    if-eq v0, p1, :cond_0

    .line 258
    iput p1, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mForeColor:I

    .line 259
    iget-boolean v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lx/launcher8/adapter/AppAdapter;->notifyDataSetChanged()V

    .line 261
    :cond_0
    return-void
.end method

.method public setIndexBlod(Z)V
    .locals 2
    .parameter "blod"

    .prologue
    const/4 v0, 0x0

    .line 240
    iput-boolean p1, p0, Lcom/lx/launcher8/adapter/AppAdapter;->indexBlod:Z

    .line 241
    iget-object v1, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mBackDrawable:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_1

    .line 242
    iget-object v1, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mBackDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz p1, :cond_0

    const/16 v0, 0xff

    :cond_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 244
    :cond_1
    return-void
.end method

.method public setNotifyOnChange(Z)V
    .locals 0
    .parameter "notifyOnChange"

    .prologue
    .line 343
    iput-boolean p1, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mNotifyOnChange:Z

    .line 344
    return-void
.end method

.method public setPaperColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 264
    if-nez p1, :cond_0

    .line 265
    const/4 p1, -0x1

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mPaperDrawable:Lcom/lx/launcher8/view/ColorDrawable;

    invoke-virtual {v0, p1}, Lcom/lx/launcher8/view/ColorDrawable;->setColor(I)V

    .line 268
    return-void
.end method

.method public setSearch(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/lx/launcher8/adapter/AppAdapter;->isSearch:Z

    .line 203
    iget-boolean v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lx/launcher8/adapter/AppAdapter;->notifyDataSetChanged()V

    .line 204
    :cond_0
    return-void
.end method

.method public setShowIndex(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 211
    iput-boolean p1, p0, Lcom/lx/launcher8/adapter/AppAdapter;->isShowIndex:Z

    .line 212
    iget-boolean v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lx/launcher8/adapter/AppAdapter;->notifyDataSetChanged()V

    .line 213
    :cond_0
    return-void
.end method

.method public setTextAndStyle(Landroid/widget/TextView;I)V
    .locals 3
    .parameter "tv"
    .parameter "position"

    .prologue
    .line 468
    if-nez p1, :cond_0

    .line 473
    :goto_0
    return-void

    .line 469
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/lx/launcher8/adapter/AppAdapter;->getItem(I)Lcom/anall/app/bean/AppInfo;

    move-result-object v2

    iget-char v2, v2, Lcom/anall/app/bean/AppInfo;->firstChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, txt:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v1, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mBackDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 472
    iget-boolean v1, p0, Lcom/lx/launcher8/adapter/AppAdapter;->indexBlod:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mIndexColor:I

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mAppColor:I

    goto :goto_1
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 2
    .parameter "comparator"

    .prologue
    .line 179
    const-string v0, "java.util.Arrays.useLegacyMergeSort"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/lx/launcher8/adapter/AppAdapter;->mOriginalValues:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    goto :goto_0
.end method
