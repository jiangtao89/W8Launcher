.class Lcom/app/common/task/Task$2;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/common/task/Task;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/common/task/Task;


# direct methods
.method constructor <init>(Lcom/app/common/task/Task;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/common/task/Task$2;->this$0:Lcom/app/common/task/Task;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/app/common/task/Task$2;->this$0:Lcom/app/common/task/Task;

    invoke-virtual {v0}, Lcom/app/common/task/Task;->finish()V

    .line 48
    return-void
.end method
