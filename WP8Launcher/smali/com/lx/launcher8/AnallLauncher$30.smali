.class Lcom/lx/launcher8/AnallLauncher$30;
.super Ljava/lang/Object;
.source "AnallLauncher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/AnallLauncher;->xxxYyy()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/AnallLauncher;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/AnallLauncher;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/AnallLauncher$30;->this$0:Lcom/lx/launcher8/AnallLauncher;

    .line 2314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 2317
    new-instance v0, Lcom/lx/launcher8/task/DownloadWP8ApkTask;

    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher$30;->this$0:Lcom/lx/launcher8/AnallLauncher;

    invoke-direct {v0, v1}, Lcom/lx/launcher8/task/DownloadWP8ApkTask;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/lx/launcher8/task/DownloadWP8ApkTask;->exec()Z

    .line 2318
    return-void
.end method
