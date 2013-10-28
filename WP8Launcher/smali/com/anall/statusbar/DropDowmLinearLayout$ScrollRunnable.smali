.class Lcom/anall/statusbar/DropDowmLinearLayout$ScrollRunnable;
.super Ljava/lang/Object;
.source "DropDowmLinearLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anall/statusbar/DropDowmLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScrollRunnable"
.end annotation


# instance fields
.field mScrollY:I

.field final synthetic this$0:Lcom/anall/statusbar/DropDowmLinearLayout;


# direct methods
.method constructor <init>(Lcom/anall/statusbar/DropDowmLinearLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/anall/statusbar/DropDowmLinearLayout$ScrollRunnable;->this$0:Lcom/anall/statusbar/DropDowmLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/anall/statusbar/DropDowmLinearLayout$ScrollRunnable;->this$0:Lcom/anall/statusbar/DropDowmLinearLayout;

    #getter for: Lcom/anall/statusbar/DropDowmLinearLayout;->mScroll:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/anall/statusbar/DropDowmLinearLayout;->access$0(Lcom/anall/statusbar/DropDowmLinearLayout;)Landroid/widget/ScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/anall/statusbar/DropDowmLinearLayout$ScrollRunnable;->this$0:Lcom/anall/statusbar/DropDowmLinearLayout;

    #getter for: Lcom/anall/statusbar/DropDowmLinearLayout;->mScroll:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/anall/statusbar/DropDowmLinearLayout;->access$0(Lcom/anall/statusbar/DropDowmLinearLayout;)Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/anall/statusbar/DropDowmLinearLayout$ScrollRunnable;->mScrollY:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 162
    :cond_0
    return-void
.end method

.method public setScrollY(I)V
    .locals 0
    .parameter "scrollY"

    .prologue
    .line 153
    iput p1, p0, Lcom/anall/statusbar/DropDowmLinearLayout$ScrollRunnable;->mScrollY:I

    .line 154
    return-void
.end method
