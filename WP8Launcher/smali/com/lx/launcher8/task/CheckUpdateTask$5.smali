.class Lcom/lx/launcher8/task/CheckUpdateTask$5;
.super Ljava/lang/Object;
.source "CheckUpdateTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/task/CheckUpdateTask;->upgradeDialog(Lcom/app/download/bean/FileSeed;IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/task/CheckUpdateTask;

.field private final synthetic val$version:I


# direct methods
.method constructor <init>(Lcom/lx/launcher8/task/CheckUpdateTask;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/task/CheckUpdateTask$5;->this$0:Lcom/lx/launcher8/task/CheckUpdateTask;

    iput p2, p0, Lcom/lx/launcher8/task/CheckUpdateTask$5;->val$version:I

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/lx/launcher8/task/CheckUpdateTask$5;->this$0:Lcom/lx/launcher8/task/CheckUpdateTask;

    #getter for: Lcom/lx/launcher8/task/CheckUpdateTask;->mSettings:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v0}, Lcom/lx/launcher8/task/CheckUpdateTask;->access$1(Lcom/lx/launcher8/task/CheckUpdateTask;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v0

    iget v1, p0, Lcom/lx/launcher8/task/CheckUpdateTask$5;->val$version:I

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/cfg/DeskSetting;->setHitVersion(I)V

    .line 143
    return-void
.end method
