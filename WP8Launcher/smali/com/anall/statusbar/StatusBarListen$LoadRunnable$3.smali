.class Lcom/anall/statusbar/StatusBarListen$LoadRunnable$3;
.super Ljava/lang/Object;
.source "StatusBarListen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anall/statusbar/StatusBarListen$LoadRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/anall/statusbar/StatusBarListen$LoadRunnable;


# direct methods
.method constructor <init>(Lcom/anall/statusbar/StatusBarListen$LoadRunnable;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anall/statusbar/StatusBarListen$LoadRunnable$3;->this$1:Lcom/anall/statusbar/StatusBarListen$LoadRunnable;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/anall/statusbar/StatusBarListen$LoadRunnable$3;->this$1:Lcom/anall/statusbar/StatusBarListen$LoadRunnable;

    #getter for: Lcom/anall/statusbar/StatusBarListen$LoadRunnable;->this$0:Lcom/anall/statusbar/StatusBarListen;
    invoke-static {v0}, Lcom/anall/statusbar/StatusBarListen$LoadRunnable;->access$0(Lcom/anall/statusbar/StatusBarListen$LoadRunnable;)Lcom/anall/statusbar/StatusBarListen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anall/statusbar/StatusBarListen;->disProgressDialog()V

    .line 165
    return-void
.end method
