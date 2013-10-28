.class Lcom/lx/launcher8/view/CellLayout$1;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/view/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/view/CellLayout;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/view/CellLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/view/CellLayout$1;->this$0:Lcom/lx/launcher8/view/CellLayout;

    .line 1327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1330
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout$1;->this$0:Lcom/lx/launcher8/view/CellLayout;

    invoke-virtual {v0, v2}, Lcom/lx/launcher8/view/CellLayout;->setVisibility(I)V

    .line 1331
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout$1;->this$0:Lcom/lx/launcher8/view/CellLayout;

    const/16 v1, 0x100

    #calls: Lcom/lx/launcher8/view/CellLayout;->setLayoutFlag(II)V
    invoke-static {v0, v2, v1}, Lcom/lx/launcher8/view/CellLayout;->access$0(Lcom/lx/launcher8/view/CellLayout;II)V

    .line 1332
    iget-object v0, p0, Lcom/lx/launcher8/view/CellLayout$1;->this$0:Lcom/lx/launcher8/view/CellLayout;

    const/4 v1, 0x2

    #calls: Lcom/lx/launcher8/view/CellLayout;->setLayoutFlag(II)V
    invoke-static {v0, v2, v1}, Lcom/lx/launcher8/view/CellLayout;->access$0(Lcom/lx/launcher8/view/CellLayout;II)V

    .line 1333
    return-void
.end method
