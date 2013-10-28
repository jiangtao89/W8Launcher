.class Lcom/app/common/utils/UMessage$1;
.super Ljava/lang/Object;
.source "UMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/common/utils/UMessage;->showTask(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$content:Ljava/lang/String;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/common/utils/UMessage$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/app/common/utils/UMessage$1;->val$content:Ljava/lang/String;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 27
    iget-object v0, p0, Lcom/app/common/utils/UMessage$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/app/common/utils/UMessage$1;->val$content:Ljava/lang/String;

    const/4 v2, 0x0

    #calls: Lcom/app/common/utils/UMessage;->showToast(Landroid/content/Context;Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/app/common/utils/UMessage;->access$0(Landroid/content/Context;Ljava/lang/String;I)V

    .line 28
    return-void
.end method
