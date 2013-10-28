.class Lcom/lx/launcher8/setting/wp8/SearchAct$3;
.super Ljava/lang/Object;
.source "SearchAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/wp8/SearchAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/SearchAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/SearchAct;->mSearchKey:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/SearchAct;->access$2(Lcom/lx/launcher8/setting/wp8/SearchAct;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/SearchAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/SearchAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/SearchAct;->mIbCancel:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/SearchAct;->access$3(Lcom/lx/launcher8/setting/wp8/SearchAct;)Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 372
    return-void
.end method
