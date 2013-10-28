.class Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter;
.super Landroid/widget/BaseAdapter;
.source "LockScreenPaperTypeListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TypeAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter;)Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;
    .locals 1
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->typeList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->access$0(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->typeList:Ljava/util/List;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->access$0(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 206
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v4, 0x14

    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, tv:Landroid/widget/TextView;
    if-nez p2, :cond_0

    .line 213
    new-instance v0, Landroid/widget/TextView;

    .end local v0           #tv:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->access$1(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 214
    .restart local v0       #tv:Landroid/widget/TextView;
    const/4 v2, 0x2

    const/high16 v3, 0x41e0

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 215
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->mAct:Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->access$2(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;)Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;

    move-result-object v2

    iget v2, v2, Lcom/lx/launcher8/setting/wp8/ScrollViewPageAct;->mTitleColorValue:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    const/4 v2, 0x0

    invoke-virtual {v0, v4, v4, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 217
    move-object p2, v0

    .line 221
    :goto_0
    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter;->this$0:Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;

    #getter for: Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->typeList:Ljava/util/List;
    invoke-static {v2}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;->access$0(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/setting/bean/TypeInfo;

    .line 222
    .local v1, typeInfo:Lcom/lx/launcher8/setting/bean/TypeInfo;
    invoke-virtual {v1}, Lcom/lx/launcher8/setting/bean/TypeInfo;->getClassname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    new-instance v2, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter$1;

    invoke-direct {v2, p0, v1}, Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter$1;-><init>(Lcom/lx/launcher8/setting/wp8/view/LockScreenPaperTypeListView$TypeAdapter;Lcom/lx/launcher8/setting/bean/TypeInfo;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    return-object p2

    .end local v1           #typeInfo:Lcom/lx/launcher8/setting/bean/TypeInfo;
    :cond_0
    move-object v0, p2

    .line 219
    check-cast v0, Landroid/widget/TextView;

    goto :goto_0
.end method
