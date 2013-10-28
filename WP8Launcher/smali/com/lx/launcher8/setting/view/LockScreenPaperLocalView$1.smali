.class Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$1;
.super Ljava/lang/Object;
.source "LockScreenPaperLocalView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->createView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$1;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/16 v4, 0x18

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 101
    .local v0, choose:Landroid/content/Intent;
    :try_start_0
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$1;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mAct:Landroid/app/Activity;
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->access$9(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x18

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, e:Landroid/content/ActivityNotFoundException;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #choose:Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 105
    .restart local v0       #choose:Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    iget-object v2, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView$1;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->mAct:Landroid/app/Activity;
    invoke-static {v2}, Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;->access$9(Lcom/lx/launcher8/setting/view/LockScreenPaperLocalView;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
