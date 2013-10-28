.class public Lcom/app/download/ExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ExpandableListAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGroupsName:[Ljava/lang/String;

.field private mRecodeInfo:Lcom/app/download/bean/RecodeInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u6b63\u5728\u4e0b\u8f7d ( %d )"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u5df2\u4e0b\u8f7d( %d )"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/app/download/ExpandableListAdapter;->mGroupsName:[Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/app/download/ExpandableListAdapter;->mContext:Landroid/content/Context;

    .line 24
    invoke-static {}, Lcom/app/download/bean/DownloadManager;->getInstance()Lcom/app/download/bean/DownloadManager;

    move-result-object v0

    iget-object v0, v0, Lcom/app/download/bean/DownloadManager;->mRecodeInfo:Lcom/app/download/bean/RecodeInfo;

    iput-object v0, p0, Lcom/app/download/ExpandableListAdapter;->mRecodeInfo:Lcom/app/download/bean/RecodeInfo;

    .line 25
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 58
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 99
    .local v0, downloadInfoShower:Lcom/app/download/bean/DownloadInfoShower;
    if-nez p4, :cond_1

    .line 100
    new-instance v0, Lcom/app/download/bean/DownloadInfoShower;

    .end local v0           #downloadInfoShower:Lcom/app/download/bean/DownloadInfoShower;
    iget-object v1, p0, Lcom/app/download/ExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/app/download/bean/DownloadInfoShower;-><init>(Landroid/content/Context;)V

    .line 101
    .restart local v0       #downloadInfoShower:Lcom/app/download/bean/DownloadInfoShower;
    iget-object v1, p0, Lcom/app/download/ExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/app/download/ExpandableListAdapter;->getSelecteDrawabe(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/app/download/bean/DownloadInfoShower;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    :goto_0
    if-nez p1, :cond_2

    .line 107
    iget-object v1, p0, Lcom/app/download/ExpandableListAdapter;->mRecodeInfo:Lcom/app/download/bean/RecodeInfo;

    invoke-virtual {v1, p2}, Lcom/app/download/bean/RecodeInfo;->NotFinishGet(I)Lcom/app/download/bean/FileSeed;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/app/download/bean/DownloadInfoShower;->updata(Lcom/app/download/bean/FileSeed;)V

    .line 112
    :cond_0
    :goto_1
    return-object v0

    :cond_1
    move-object v0, p4

    .line 103
    check-cast v0, Lcom/app/download/bean/DownloadInfoShower;

    goto :goto_0

    .line 108
    :cond_2
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/app/download/ExpandableListAdapter;->mRecodeInfo:Lcom/app/download/bean/RecodeInfo;

    invoke-virtual {v1, p2}, Lcom/app/download/bean/RecodeInfo;->FinishGet(I)Lcom/app/download/bean/FileSeed;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/app/download/bean/DownloadInfoShower;->updata(Lcom/app/download/bean/FileSeed;)V

    goto :goto_1
.end method

.method public getChildrenCount(I)I
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 34
    if-nez p1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/app/download/ExpandableListAdapter;->mRecodeInfo:Lcom/app/download/bean/RecodeInfo;

    invoke-virtual {v0}, Lcom/app/download/bean/RecodeInfo;->getDealingCount()I

    move-result v0

    .line 38
    :goto_0
    return v0

    .line 36
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 37
    iget-object v0, p0, Lcom/app/download/ExpandableListAdapter;->mRecodeInfo:Lcom/app/download/bean/RecodeInfo;

    invoke-virtual {v0}, Lcom/app/download/bean/RecodeInfo;->getFinishCount()I

    move-result v0

    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/app/download/ExpandableListAdapter;->mGroupsName:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 53
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v3, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 68
    iget-object v1, p0, Lcom/app/download/ExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, p3}, Lcom/app/common/view/ItemHintView;->transForm(Landroid/content/Context;Landroid/view/View;)Lcom/app/common/view/ItemHintView;

    move-result-object v0

    .line 69
    .local v0, holder:Lcom/app/common/view/ItemHintView;
    if-nez p3, :cond_0

    .line 70
    iget-object v1, v0, Lcom/app/common/view/ItemHintView;->mInfoB:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    iget-object v1, v0, Lcom/app/common/view/ItemHintView;->mInfo:Landroid/widget/TextView;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    iget-object v1, v0, Lcom/app/common/view/ItemHintView;->mInfo:Landroid/widget/TextView;

    const/high16 v2, 0x4180

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 73
    iget-object v1, v0, Lcom/app/common/view/ItemHintView;->mInfo:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v1, v3, v5, v5, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 74
    iget-object v1, p0, Lcom/app/download/ExpandableListAdapter;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/app/download/config/Resources;->list_group_bg:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/app/common/view/ItemHintView;->setBackgroundResource(I)V

    .line 77
    :cond_0
    if-nez p1, :cond_1

    .line 78
    iget-object v1, v0, Lcom/app/common/view/ItemHintView;->mIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/app/download/ExpandableListAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/app/download/config/Resources;->down_category_ing:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    iget-object v1, v0, Lcom/app/common/view/ItemHintView;->mInfo:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/app/download/ExpandableListAdapter;->mGroupsName:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/app/download/ExpandableListAdapter;->mRecodeInfo:Lcom/app/download/bean/RecodeInfo;

    invoke-virtual {v4}, Lcom/app/download/bean/RecodeInfo;->getDealingCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :cond_1
    if-ne p1, v6, :cond_2

    .line 82
    iget-object v1, v0, Lcom/app/common/view/ItemHintView;->mIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/app/download/ExpandableListAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/app/download/config/Resources;->down_category_finish:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    iget-object v1, v0, Lcom/app/common/view/ItemHintView;->mInfo:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/app/download/ExpandableListAdapter;->mGroupsName:[Ljava/lang/String;

    aget-object v2, v2, p1

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/app/download/ExpandableListAdapter;->mRecodeInfo:Lcom/app/download/bean/RecodeInfo;

    invoke-virtual {v4}, Lcom/app/download/bean/RecodeInfo;->getFinishCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_2
    if-eqz p2, :cond_3

    .line 87
    iget-object v1, v0, Lcom/app/common/view/ItemHintView;->mIconB:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/app/download/ExpandableListAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/app/download/config/Resources;->down_group_expand:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    :goto_0
    return-object v0

    .line 89
    :cond_3
    iget-object v1, v0, Lcom/app/common/view/ItemHintView;->mIconB:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/app/download/ExpandableListAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/app/download/config/Resources;->down_group_closed:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method getSelecteDrawabe(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "context"

    .prologue
    .line 121
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 122
    .local v0, draw1:Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/app/common/config/Resources;->list_item_selecte:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 123
    .local v1, draw2:Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v0}, Lcom/app/common/utils/ViewHelper;->getDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    return-object v2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method
