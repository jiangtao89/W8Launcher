.class public Lcom/app/common/adapter/ItemHintMoreAdapter;
.super Landroid/widget/BaseAdapter;
.source "ItemHintMoreAdapter.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mIconLeftRes:[I

.field protected mIconRightRes:[I

.field protected mInfoCenter:[Ljava/lang/String;

.field protected mInfoRight:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[I[Ljava/lang/String;[Ljava/lang/String;[I)V
    .locals 0
    .parameter "context"
    .parameter "iconLeftRes"
    .parameter "infoCenter"
    .parameter "infoRight"
    .parameter "iconRightRes"

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    iput-object p2, p0, Lcom/app/common/adapter/ItemHintMoreAdapter;->mIconLeftRes:[I

    .line 21
    iput-object p3, p0, Lcom/app/common/adapter/ItemHintMoreAdapter;->mInfoCenter:[Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/app/common/adapter/ItemHintMoreAdapter;->mInfoRight:[Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lcom/app/common/adapter/ItemHintMoreAdapter;->mIconRightRes:[I

    .line 25
    iput-object p1, p0, Lcom/app/common/adapter/ItemHintMoreAdapter;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/app/common/adapter/ItemHintMoreAdapter;->mInfoCenter:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 40
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    iget-object v1, p0, Lcom/app/common/adapter/ItemHintMoreAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/app/common/view/ItemHintView;->transForm(Landroid/content/Context;Landroid/view/View;)Lcom/app/common/view/ItemHintView;

    move-result-object v0

    .line 46
    .local v0, holder:Lcom/app/common/view/ItemHintView;
    if-nez p2, :cond_0

    .line 47
    iget-object v1, p0, Lcom/app/common/adapter/ItemHintMoreAdapter;->mIconLeftRes:[I

    if-nez v1, :cond_4

    .line 48
    iget-object v1, v0, Lcom/app/common/view/ItemHintView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    :goto_0
    iget-object v1, p0, Lcom/app/common/adapter/ItemHintMoreAdapter;->mIconRightRes:[I

    if-nez v1, :cond_6

    .line 56
    iget-object v1, v0, Lcom/app/common/view/ItemHintView;->mIconB:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    :goto_1
    iget-object v1, p0, Lcom/app/common/adapter/ItemHintMoreAdapter;->mInfoRight:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 64
    iget-object v1, v0, Lcom/app/common/view/ItemHintView;->mInfoB:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/app/common/adapter/ItemHintMoreAdapter;->mIconLeftRes:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/app/common/adapter/ItemHintMoreAdapter;->mIconLeftRes:[I

    array-length v1, v1

    if-ge v4, v1, :cond_1

    .line 69
    iget-object v1, v0, Lcom/app/common/view/ItemHintView;->mIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/app/common/adapter/ItemHintMoreAdapter;->mIconLeftRes:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    :cond_1
    iget-object v1, v0, Lcom/app/common/view/ItemHintView;->mInfo:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/app/common/adapter/ItemHintMoreAdapter;->mInfoCenter:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v1, p0, Lcom/app/common/adapter/ItemHintMoreAdapter;->mInfoRight:[Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 75
    iget-object v1, v0, Lcom/app/common/view/ItemHintView;->mInfoB:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/app/common/adapter/ItemHintMoreAdapter;->mInfoRight:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :cond_2
    iget-object v1, p0, Lcom/app/common/adapter/ItemHintMoreAdapter;->mIconRightRes:[I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/app/common/adapter/ItemHintMoreAdapter;->mIconRightRes:[I

    array-length v1, v1

    if-ge v4, v1, :cond_3

    .line 79
    iget-object v1, v0, Lcom/app/common/view/ItemHintView;->mIconB:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/app/common/adapter/ItemHintMoreAdapter;->mIconRightRes:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    :cond_3
    return-object v0

    .line 49
    :cond_4
    iget-object v1, p0, Lcom/app/common/adapter/ItemHintMoreAdapter;->mIconLeftRes:[I

    array-length v1, v1

    if-ne v4, v1, :cond_5

    .line 50
    iget-object v1, v0, Lcom/app/common/view/ItemHintView;->mIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/app/common/adapter/ItemHintMoreAdapter;->mIconLeftRes:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 52
    :cond_5
    iget-object v1, v0, Lcom/app/common/view/ItemHintView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 57
    :cond_6
    iget-object v1, p0, Lcom/app/common/adapter/ItemHintMoreAdapter;->mIconRightRes:[I

    array-length v1, v1

    if-ne v4, v1, :cond_7

    .line 58
    iget-object v1, v0, Lcom/app/common/view/ItemHintView;->mIconB:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/app/common/adapter/ItemHintMoreAdapter;->mIconRightRes:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 60
    :cond_7
    iget-object v1, v0, Lcom/app/common/view/ItemHintView;->mIconB:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
