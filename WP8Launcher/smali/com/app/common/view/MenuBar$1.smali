.class Lcom/app/common/view/MenuBar$1;
.super Ljava/lang/Object;
.source "MenuBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/common/view/MenuBar;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/common/view/MenuBar;


# direct methods
.method constructor <init>(Lcom/app/common/view/MenuBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/common/view/MenuBar$1;->this$0:Lcom/app/common/view/MenuBar;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/app/common/view/MenuBar$1;->this$0:Lcom/app/common/view/MenuBar;

    #getter for: Lcom/app/common/view/MenuBar;->mListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Lcom/app/common/view/MenuBar;->access$0(Lcom/app/common/view/MenuBar;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/app/common/view/MenuBar$1;->this$0:Lcom/app/common/view/MenuBar;

    #getter for: Lcom/app/common/view/MenuBar;->mListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Lcom/app/common/view/MenuBar;->access$0(Lcom/app/common/view/MenuBar;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/app/common/view/MenuBar$1;->this$0:Lcom/app/common/view/MenuBar;

    invoke-virtual {v2, p1}, Lcom/app/common/view/MenuBar;->getVisibleChildPosition(Landroid/view/View;)I

    move-result v3

    iget-object v2, p0, Lcom/app/common/view/MenuBar$1;->this$0:Lcom/app/common/view/MenuBar;

    invoke-virtual {v2}, Lcom/app/common/view/MenuBar;->getVisibleChildCount()I

    move-result v2

    int-to-long v4, v2

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 171
    :cond_0
    return-void
.end method
