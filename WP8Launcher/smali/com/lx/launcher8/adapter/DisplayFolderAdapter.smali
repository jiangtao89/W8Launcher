.class public Lcom/lx/launcher8/adapter/DisplayFolderAdapter;
.super Landroid/widget/BaseAdapter;
.source "DisplayFolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/adapter/DisplayFolderAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/bean/AppCell;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mdeskSetting:Lcom/lx/launcher8/cfg/DeskSetting;

.field private textColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lx/launcher8/cfg/DeskSetting;)V
    .locals 1
    .parameter "con"
    .parameter "deskSet"

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/lx/launcher8/adapter/DisplayFolderAdapter;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/lx/launcher8/adapter/DisplayFolderAdapter;->mdeskSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    .line 28
    iget-object v0, p0, Lcom/lx/launcher8/adapter/DisplayFolderAdapter;->mdeskSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v0}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, -0x100

    :goto_0
    iput v0, p0, Lcom/lx/launcher8/adapter/DisplayFolderAdapter;->textColor:I

    .line 29
    return-void

    .line 28
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lx/launcher8/adapter/DisplayFolderAdapter;->mAppList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/adapter/DisplayFolderAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lx/launcher8/adapter/DisplayFolderAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 50
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v7, 0x1e

    const/4 v6, 0x0

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, holder:Lcom/lx/launcher8/adapter/DisplayFolderAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 57
    iget-object v3, p0, Lcom/lx/launcher8/adapter/DisplayFolderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03005c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 58
    new-instance v0, Lcom/lx/launcher8/adapter/DisplayFolderAdapter$ViewHolder;

    .end local v0           #holder:Lcom/lx/launcher8/adapter/DisplayFolderAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/lx/launcher8/adapter/DisplayFolderAdapter$ViewHolder;-><init>(Lcom/lx/launcher8/adapter/DisplayFolderAdapter;)V

    .line 59
    .restart local v0       #holder:Lcom/lx/launcher8/adapter/DisplayFolderAdapter$ViewHolder;
    const v3, 0x7f090186

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/lx/launcher8/adapter/DisplayFolderAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    .line 60
    const v3, 0x7f090187

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/lx/launcher8/adapter/DisplayFolderAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    .line 61
    iget-object v3, p0, Lcom/lx/launcher8/adapter/DisplayFolderAdapter;->mdeskSetting:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v3}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemeColor()I

    move-result v2

    .line 62
    .local v2, temeColor:I
    const v3, 0x7f090185

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 64
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    .end local v2           #temeColor:I
    :goto_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 69
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, v0, Lcom/lx/launcher8/adapter/DisplayFolderAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    iget v4, p0, Lcom/lx/launcher8/adapter/DisplayFolderAdapter;->textColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    iget-object v3, p0, Lcom/lx/launcher8/adapter/DisplayFolderAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 71
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 72
    iget-object v3, v0, Lcom/lx/launcher8/adapter/DisplayFolderAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    iget-object v3, v0, Lcom/lx/launcher8/adapter/DisplayFolderAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    const/high16 v4, 0x41f0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 74
    iget-object v3, v0, Lcom/lx/launcher8/adapter/DisplayFolderAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    iget-object v3, v0, Lcom/lx/launcher8/adapter/DisplayFolderAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    const v4, 0x7f0a01dc

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 76
    iget-object v3, v0, Lcom/lx/launcher8/adapter/DisplayFolderAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    invoke-virtual {v3, v6, v7, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 86
    :goto_1
    return-object p2

    .line 66
    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/lx/launcher8/adapter/DisplayFolderAdapter$ViewHolder;
    check-cast v0, Lcom/lx/launcher8/adapter/DisplayFolderAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/lx/launcher8/adapter/DisplayFolderAdapter$ViewHolder;
    goto :goto_0

    .line 79
    .restart local v1       #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v3, v0, Lcom/lx/launcher8/adapter/DisplayFolderAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    iget-object v4, v0, Lcom/lx/launcher8/adapter/DisplayFolderAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/lx/launcher8/adapter/DisplayFolderAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lx/launcher8/bean/AppCell;

    iget-object v3, v3, Lcom/lx/launcher8/bean/AppCell;->icon:Landroid/graphics/Bitmap;

    invoke-direct {v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    const/16 v3, 0xf

    invoke-virtual {v1, v3, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 82
    iget-object v3, v0, Lcom/lx/launcher8/adapter/DisplayFolderAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    const/high16 v4, 0x4190

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 83
    iget-object v3, v0, Lcom/lx/launcher8/adapter/DisplayFolderAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object v3, v0, Lcom/lx/launcher8/adapter/DisplayFolderAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 85
    iget-object v4, v0, Lcom/lx/launcher8/adapter/DisplayFolderAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lx/launcher8/adapter/DisplayFolderAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lx/launcher8/bean/AppCell;

    iget-object v3, v3, Lcom/lx/launcher8/bean/AppCell;->appName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public removeItem(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lx/launcher8/adapter/DisplayFolderAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/lx/launcher8/adapter/DisplayFolderAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 92
    invoke-virtual {p0}, Lcom/lx/launcher8/adapter/DisplayFolderAdapter;->notifyDataSetChanged()V

    .line 94
    :cond_0
    return-void
.end method

.method public setListData(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/bean/AppCell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lx/launcher8/bean/AppCell;>;"
    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/lx/launcher8/adapter/DisplayFolderAdapter;->mAppList:Ljava/util/ArrayList;

    .line 36
    :cond_0
    return-void
.end method
