.class Lcom/anall/statusbar/StatusBarListen$LoadRunnable$2;
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

.field private final synthetic val$temp:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/anall/statusbar/StatusBarListen$LoadRunnable;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anall/statusbar/StatusBarListen$LoadRunnable$2;->this$1:Lcom/anall/statusbar/StatusBarListen$LoadRunnable;

    iput-object p2, p0, Lcom/anall/statusbar/StatusBarListen$LoadRunnable$2;->val$temp:Ljava/util/ArrayList;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/anall/statusbar/StatusBarListen$LoadRunnable$2;->this$1:Lcom/anall/statusbar/StatusBarListen$LoadRunnable;

    #getter for: Lcom/anall/statusbar/StatusBarListen$LoadRunnable;->this$0:Lcom/anall/statusbar/StatusBarListen;
    invoke-static {v0}, Lcom/anall/statusbar/StatusBarListen$LoadRunnable;->access$0(Lcom/anall/statusbar/StatusBarListen$LoadRunnable;)Lcom/anall/statusbar/StatusBarListen;

    move-result-object v0

    iget-object v1, p0, Lcom/anall/statusbar/StatusBarListen$LoadRunnable$2;->val$temp:Ljava/util/ArrayList;

    #setter for: Lcom/anall/statusbar/StatusBarListen;->mList:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/anall/statusbar/StatusBarListen;->access$1(Lcom/anall/statusbar/StatusBarListen;Ljava/util/ArrayList;)V

    .line 156
    iget-object v0, p0, Lcom/anall/statusbar/StatusBarListen$LoadRunnable$2;->this$1:Lcom/anall/statusbar/StatusBarListen$LoadRunnable;

    #getter for: Lcom/anall/statusbar/StatusBarListen$LoadRunnable;->this$0:Lcom/anall/statusbar/StatusBarListen;
    invoke-static {v0}, Lcom/anall/statusbar/StatusBarListen$LoadRunnable;->access$0(Lcom/anall/statusbar/StatusBarListen$LoadRunnable;)Lcom/anall/statusbar/StatusBarListen;

    move-result-object v0

    #getter for: Lcom/anall/statusbar/StatusBarListen;->mAdapter:Lcom/anall/statusbar/StatusBarListen$AppAdapter;
    invoke-static {v0}, Lcom/anall/statusbar/StatusBarListen;->access$2(Lcom/anall/statusbar/StatusBarListen;)Lcom/anall/statusbar/StatusBarListen$AppAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anall/statusbar/StatusBarListen$AppAdapter;->notifyDataSetChanged()V

    .line 157
    return-void
.end method
