.class Lcom/lx/launcher8/AnallLauncher$26;
.super Ljava/lang/Object;
.source "AnallLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/AnallLauncher;->OnItemClick(Lcom/lx/launcher8/view/CellView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/AnallLauncher;

.field private final synthetic val$cell:Lcom/lx/launcher8/view/CellView;

.field private final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/AnallLauncher;Landroid/content/Intent;Lcom/lx/launcher8/view/CellView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/AnallLauncher$26;->this$0:Lcom/lx/launcher8/AnallLauncher;

    iput-object p2, p0, Lcom/lx/launcher8/AnallLauncher$26;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/lx/launcher8/AnallLauncher$26;->val$cell:Lcom/lx/launcher8/view/CellView;

    .line 2016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2019
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher$26;->this$0:Lcom/lx/launcher8/AnallLauncher;

    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher$26;->this$0:Lcom/lx/launcher8/AnallLauncher;

    iget-object v2, p0, Lcom/lx/launcher8/AnallLauncher$26;->val$intent:Landroid/content/Intent;

    const/4 v3, 0x0

    #calls: Lcom/lx/launcher8/AnallLauncher;->safeStartActivity(Landroid/content/Context;Landroid/content/Intent;Z)Z
    invoke-static {v0, v1, v2, v3}, Lcom/lx/launcher8/AnallLauncher;->access$1(Lcom/lx/launcher8/AnallLauncher;Landroid/content/Context;Landroid/content/Intent;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2020
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher$26;->this$0:Lcom/lx/launcher8/AnallLauncher;

    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher$26;->val$cell:Lcom/lx/launcher8/view/CellView;

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/AnallLauncher;->startCellViewSet(Lcom/lx/launcher8/view/CellView;)V

    .line 2022
    :cond_0
    return-void
.end method
