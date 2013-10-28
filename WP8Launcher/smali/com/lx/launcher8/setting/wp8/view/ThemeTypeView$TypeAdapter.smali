.class Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter;
.super Landroid/widget/BaseAdapter;
.source "ThemeTypeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$Cate;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;


# direct methods
.method public constructor <init>(Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$Cate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$Cate;>;"
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 234
    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter;->mList:Ljava/util/List;

    .line 235
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 249
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 254
    const/4 v1, 0x0

    .line 255
    .local v1, vh:Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 256
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->access$0(Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;)Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03003e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 257
    new-instance v1, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter$ViewHolder;

    .end local v1           #vh:Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter$ViewHolder;
    invoke-direct {v1, p0}, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter$ViewHolder;-><init>(Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter;)V

    .line 258
    .restart local v1       #vh:Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter$ViewHolder;
    const v2, 0x7f090103

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter$ViewHolder;->mTv:Landroid/widget/TextView;

    .line 259
    const v2, 0x7f0900de

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter$ViewHolder;->mSummary:Landroid/widget/TextView;

    .line 260
    iget-object v2, v1, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter$ViewHolder;->mTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->access$0(Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;)Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    move-result-object v3

    iget v3, v3, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->mTitleColorValue:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 261
    iget-object v2, v1, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter$ViewHolder;->mSummary:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->mAct:Lcom/lx/launcher8/setting/wp8/ThemeMainAct;
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;->access$0(Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView;)Lcom/lx/launcher8/setting/wp8/ThemeMainAct;

    move-result-object v3

    iget v3, v3, Lcom/lx/launcher8/setting/wp8/ThemeMainAct;->mTitleColorValue:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 262
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 264
    :goto_0
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$Cate;

    .line 265
    .local v0, ct:Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$Cate;
    iget-object v2, v1, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter$ViewHolder;->mTv:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$Cate;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget v2, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$Cate;->summary:I

    if-lez v2, :cond_1

    .line 267
    iget-object v2, v1, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter$ViewHolder;->mSummary:Landroid/widget/TextView;

    const-string v3, "(%d)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v0, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$Cate;->summary:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    :goto_1
    return-object p2

    .line 263
    .end local v0           #ct:Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$Cate;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #vh:Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter$ViewHolder;
    check-cast v1, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter$ViewHolder;

    .restart local v1       #vh:Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter$ViewHolder;
    goto :goto_0

    .line 269
    .restart local v0       #ct:Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$Cate;
    :cond_1
    iget-object v2, v1, Lcom/lx/launcher8/setting/wp8/view/ThemeTypeView$TypeAdapter$ViewHolder;->mSummary:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
