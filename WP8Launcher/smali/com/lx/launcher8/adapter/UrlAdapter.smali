.class public Lcom/lx/launcher8/adapter/UrlAdapter;
.super Landroid/widget/BaseAdapter;
.source "UrlAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/adapter/UrlAdapter$CustomURLSpan;
    }
.end annotation


# static fields
.field private static mColumn:I

.field private static mWidth:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lx/launcher8/setting/bean/UrlInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTextColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x4

    sput v0, Lcom/lx/launcher8/adapter/UrlAdapter;->mColumn:I

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 4
    .parameter "context"
    .parameter
    .parameter "textColor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/lx/launcher8/setting/bean/UrlInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/lx/launcher8/setting/bean/UrlInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/lx/launcher8/adapter/UrlAdapter;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/lx/launcher8/adapter/UrlAdapter;->mList:Ljava/util/List;

    .line 31
    iput p3, p0, Lcom/lx/launcher8/adapter/UrlAdapter;->mTextColor:I

    .line 33
    const/high16 v2, 0x40c0

    invoke-static {p1, v2}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v2

    float-to-int v0, v2

    .line 34
    .local v0, hGap:I
    iget-object v2, p0, Lcom/lx/launcher8/adapter/UrlAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 35
    .local v1, width:I
    sget v2, Lcom/lx/launcher8/adapter/UrlAdapter;->mColumn:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v2, v0

    sub-int v2, v1, v2

    sget v3, Lcom/lx/launcher8/adapter/UrlAdapter;->mColumn:I

    div-int/2addr v2, v3

    sput v2, Lcom/lx/launcher8/adapter/UrlAdapter;->mWidth:I

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/adapter/UrlAdapter;)I
    .locals 1
    .parameter

    .prologue
    .line 22
    iget v0, p0, Lcom/lx/launcher8/adapter/UrlAdapter;->mTextColor:I

    return v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lx/launcher8/adapter/UrlAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lx/launcher8/adapter/UrlAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lx/launcher8/adapter/UrlAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/setting/bean/UrlInfo;

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/bean/UrlInfo;->getRid()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 55
    move-object v1, p2

    check-cast v1, Landroid/widget/TextView;

    .line 56
    .local v1, tv:Landroid/widget/TextView;
    if-nez v1, :cond_0

    .line 57
    new-instance v1, Landroid/widget/TextView;

    .end local v1           #tv:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/lx/launcher8/adapter/UrlAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 58
    .restart local v1       #tv:Landroid/widget/TextView;
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    sget v3, Lcom/lx/launcher8/adapter/UrlAdapter;->mWidth:I

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 60
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 61
    const/high16 v2, 0x4190

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 64
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    iget-object v2, p0, Lcom/lx/launcher8/adapter/UrlAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/setting/bean/UrlInfo;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/bean/UrlInfo;->getLinkName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 65
    .local v0, ss:Landroid/text/SpannableString;
    new-instance v3, Lcom/lx/launcher8/adapter/UrlAdapter$CustomURLSpan;

    iget-object v2, p0, Lcom/lx/launcher8/adapter/UrlAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/setting/bean/UrlInfo;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/bean/UrlInfo;->getLinkUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, p0, v2}, Lcom/lx/launcher8/adapter/UrlAdapter$CustomURLSpan;-><init>(Lcom/lx/launcher8/adapter/UrlAdapter;Ljava/lang/String;)V

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/lx/launcher8/adapter/UrlAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lx/launcher8/setting/bean/UrlInfo;

    invoke-virtual {v2}, Lcom/lx/launcher8/setting/bean/UrlInfo;->getLinkName()Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0x21

    .line 65
    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 67
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 70
    return-object v1
.end method
