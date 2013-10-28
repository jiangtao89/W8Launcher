.class Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;
.super Landroid/widget/BaseAdapter;
.source "LockScreenPaperTypeListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private paths:[Ljava/lang/String;

.field final synthetic this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;)V
    .locals 3
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 299
    new-instance v1, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$1;

    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$1;-><init>(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;)V

    iput-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;->mHandler:Landroid/os/Handler;

    .line 218
    :try_start_0
    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->access$3(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "classpic"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;->paths:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;)Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;
    .locals 1
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->typeList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->access$4(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->typeList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->access$4(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 236
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 241
    const/4 v5, 0x0

    .line 242
    .local v5, vh:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;
    if-nez p2, :cond_1

    .line 243
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->access$3(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03003c

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 244
    new-instance v5, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;

    .end local v5           #vh:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;
    invoke-direct {v5, p0}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;-><init>(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;)V

    .line 245
    .restart local v5       #vh:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;
    const v6, 0x7f090079

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, v5, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;->loading:Landroid/widget/LinearLayout;

    .line 246
    const v6, 0x7f0900ee

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, v5, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;->fl:Landroid/widget/FrameLayout;

    .line 247
    iget-object v6, v5, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;->fl:Landroid/widget/FrameLayout;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->w:I
    invoke-static {v8}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->access$5(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;)I

    move-result v8

    iget-object v9, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->gapS:I
    invoke-static {v9}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->access$6(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->h:I
    invoke-static {v9}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->access$7(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;)I

    move-result v9

    iget-object v10, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->gapS:I
    invoke-static {v10}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->access$6(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;)I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    iget-object v6, v5, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;->fl:Landroid/widget/FrameLayout;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 249
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->w:I
    invoke-static {v6}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->access$5(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;)I

    move-result v6

    iget-object v7, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->h:I
    invoke-static {v7}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->access$7(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;)I

    move-result v7

    const/16 v8, 0x11

    invoke-direct {v3, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 250
    .local v3, params:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->gapS:I
    invoke-static {v6}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->access$6(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;)I

    move-result v6

    iget-object v7, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->gapS:I
    invoke-static {v7}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->access$6(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;)I

    move-result v7

    iget-object v8, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->gapS:I
    invoke-static {v8}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->access$6(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;)I

    move-result v8

    iget-object v9, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->gapS:I
    invoke-static {v9}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->access$6(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;)I

    move-result v9

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 251
    const v6, 0x7f0900ef

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v5, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    .line 252
    iget-object v6, v5, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    const v6, 0x7f0900e4

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;->textTv:Landroid/widget/TextView;

    .line 254
    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 256
    .end local v3           #params:Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    iget-object v6, v5, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;->loading:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 257
    iget-object v6, v5, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->typeList:Ljava/util/List;
    invoke-static {v6}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->access$4(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lx/launcher8/setting/bean/TypeInfo;

    .line 259
    .local v4, typeInfo:Lcom/lx/launcher8/setting/bean/TypeInfo;
    iput-object v4, v5, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;->ti:Lcom/lx/launcher8/setting/bean/TypeInfo;

    .line 260
    iget-object v6, v5, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;->textTv:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/lx/launcher8/setting/bean/TypeInfo;->getClassname()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    invoke-virtual {v4}, Lcom/lx/launcher8/setting/bean/TypeInfo;->getImgurl()Ljava/lang/String;

    move-result-object v6

    const-string v7, "classpic"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 263
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;->paths:[Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;->paths:[Ljava/lang/String;

    array-length v6, v6

    if-ge p1, v6, :cond_0

    .line 264
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "classpic"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;->paths:[Ljava/lang/String;

    aget-object v7, v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, abPath:Ljava/lang/String;
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;->access$3(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/lx/launcher8/util/Utils;->createFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 266
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 267
    iget-object v6, v5, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 268
    iget-object v6, v5, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 269
    iget-object v6, v5, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 270
    iget-object v6, v5, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;->loading:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 280
    .end local v0           #abPath:Ljava/lang/String;
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    :goto_1
    iget-object v6, v5, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;->screenShotIv:Landroid/widget/ImageView;

    new-instance v7, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$2;

    invoke-direct {v7, p0, v4}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$2;-><init>(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;Lcom/lx/launcher8/setting/bean/TypeInfo;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    new-instance v6, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$3;

    invoke-direct {v6, p0, v4}, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$3;-><init>(Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;Lcom/lx/launcher8/setting/bean/TypeInfo;)V

    invoke-virtual {p2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    return-object p2

    .line 255
    .end local v4           #typeInfo:Lcom/lx/launcher8/setting/bean/TypeInfo;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #vh:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;
    check-cast v5, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;

    .restart local v5       #vh:Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter$ViewHolder;
    goto/16 :goto_0

    .line 274
    .restart local v4       #typeInfo:Lcom/lx/launcher8/setting/bean/TypeInfo;
    :cond_2
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 275
    .local v2, msg:Landroid/os/Message;
    const/4 v6, 0x0

    iput v6, v2, Landroid/os/Message;->what:I

    .line 276
    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 277
    iget-object v6, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperTypeListView$TypeAdapter;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x64

    invoke-virtual {v6, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method
