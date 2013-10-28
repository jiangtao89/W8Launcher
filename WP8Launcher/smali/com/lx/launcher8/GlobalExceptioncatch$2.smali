.class Lcom/lx/launcher8/GlobalExceptioncatch$2;
.super Ljava/lang/Thread;
.source "GlobalExceptioncatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/GlobalExceptioncatch;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/GlobalExceptioncatch;

.field private final synthetic val$sw:Ljava/io/StringWriter;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/GlobalExceptioncatch;Ljava/io/StringWriter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/GlobalExceptioncatch$2;->this$0:Lcom/lx/launcher8/GlobalExceptioncatch;

    iput-object p2, p0, Lcom/lx/launcher8/GlobalExceptioncatch$2;->val$sw:Ljava/io/StringWriter;

    .line 38
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lx/launcher8/GlobalExceptioncatch$2;->this$0:Lcom/lx/launcher8/GlobalExceptioncatch;

    iget-object v1, p0, Lcom/lx/launcher8/GlobalExceptioncatch$2;->val$sw:Ljava/io/StringWriter;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/lx/launcher8/GlobalExceptioncatch;->saveLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/lx/launcher8/GlobalExceptioncatch;->access$0(Lcom/lx/launcher8/GlobalExceptioncatch;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/lx/launcher8/GlobalExceptioncatch$2;->this$0:Lcom/lx/launcher8/GlobalExceptioncatch;

    iget-object v0, v0, Lcom/lx/launcher8/GlobalExceptioncatch;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 42
    return-void
.end method
