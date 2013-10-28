.class Lcom/lx/launcher8/setting/wp8/SearchAct$12;
.super Ljava/lang/Object;
.source "SearchAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/SearchAct;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

.field private final synthetic val$activities:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/SearchAct;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$12;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$12;->val$activities:Ljava/util/List;

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 322
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$12;->val$activities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 324
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    .line 325
    const-string v2, "free_form"

    .line 324
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    const-string v1, "android.speech.extra.PROMPT"

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$12;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    const v3, 0x7f0a0111

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/wp8/SearchAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$12;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/lx/launcher8/setting/wp8/SearchAct;->startActivityForResult(Landroid/content/Intent;I)V

    .line 331
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$12;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/SearchAct;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lx/launcher8/setting/wp8/SearchAct;->access$15(Lcom/lx/launcher8/setting/wp8/SearchAct;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$12;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    const v3, 0x7f0a0112

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/setting/wp8/SearchAct;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
