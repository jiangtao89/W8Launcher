.class Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView$2;
.super Ljava/lang/Object;
.source "LockScreenPaperSearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView$2;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 69
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView$2;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;

    #getter for: Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->searchBox:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->access$3(Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v1, p0, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView$2;->this$0:Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;

    #calls: Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->search()V
    invoke-static {v1}, Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;->access$4(Lcom/lx/launcher8/setting/view/LockScreenPaperSearchView;)V

    .line 72
    return-void
.end method
