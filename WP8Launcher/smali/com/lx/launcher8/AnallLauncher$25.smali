.class Lcom/lx/launcher8/AnallLauncher$25;
.super Ljava/lang/Object;
.source "AnallLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/AnallLauncher;->onMessageReceive(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/AnallLauncher;

.field private final synthetic val$unReadCount:I


# direct methods
.method constructor <init>(Lcom/lx/launcher8/AnallLauncher;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/AnallLauncher$25;->this$0:Lcom/lx/launcher8/AnallLauncher;

    iput p2, p0, Lcom/lx/launcher8/AnallLauncher$25;->val$unReadCount:I

    .line 1878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher$25;->this$0:Lcom/lx/launcher8/AnallLauncher;

    iget v1, p0, Lcom/lx/launcher8/AnallLauncher$25;->val$unReadCount:I

    #calls: Lcom/lx/launcher8/AnallLauncher;->setFunSmsNum(I)V
    invoke-static {v0, v1}, Lcom/lx/launcher8/AnallLauncher;->access$21(Lcom/lx/launcher8/AnallLauncher;I)V

    .line 1882
    return-void
.end method
