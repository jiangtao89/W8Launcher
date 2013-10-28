.class Lcom/lx/launcher8/view/LettersDialog$LettersAdapter$1;
.super Ljava/lang/Object;
.source "LettersDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;

.field private final synthetic val$cc:C


# direct methods
.method constructor <init>(Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;C)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/view/LettersDialog$LettersAdapter$1;->this$1:Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;

    iput-char p2, p0, Lcom/lx/launcher8/view/LettersDialog$LettersAdapter$1;->val$cc:C

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 153
    .local v0, bool:Z
    if-eqz v0, :cond_0

    .line 154
    iget-object v2, p0, Lcom/lx/launcher8/view/LettersDialog$LettersAdapter$1;->this$1:Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;

    #getter for: Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;->this$0:Lcom/lx/launcher8/view/LettersDialog;
    invoke-static {v2}, Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;->access$0(Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;)Lcom/lx/launcher8/view/LettersDialog;

    move-result-object v2

    #getter for: Lcom/lx/launcher8/view/LettersDialog;->mAdapter:Lcom/lx/launcher8/adapter/AppAdapter;
    invoke-static {v2}, Lcom/lx/launcher8/view/LettersDialog;->access$4(Lcom/lx/launcher8/view/LettersDialog;)Lcom/lx/launcher8/adapter/AppAdapter;

    move-result-object v2

    iget-char v3, p0, Lcom/lx/launcher8/view/LettersDialog$LettersAdapter$1;->val$cc:C

    invoke-virtual {v2, v3}, Lcom/lx/launcher8/adapter/AppAdapter;->getIndex(C)I

    move-result v1

    .line 155
    .local v1, index:I
    iget-object v2, p0, Lcom/lx/launcher8/view/LettersDialog$LettersAdapter$1;->this$1:Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;

    #getter for: Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;->this$0:Lcom/lx/launcher8/view/LettersDialog;
    invoke-static {v2}, Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;->access$0(Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;)Lcom/lx/launcher8/view/LettersDialog;

    move-result-object v2

    #getter for: Lcom/lx/launcher8/view/LettersDialog;->mListView:Landroid/widget/AbsListView;
    invoke-static {v2}, Lcom/lx/launcher8/view/LettersDialog;->access$6(Lcom/lx/launcher8/view/LettersDialog;)Landroid/widget/AbsListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 156
    iget-object v2, p0, Lcom/lx/launcher8/view/LettersDialog$LettersAdapter$1;->this$1:Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;

    #getter for: Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;->this$0:Lcom/lx/launcher8/view/LettersDialog;
    invoke-static {v2}, Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;->access$0(Lcom/lx/launcher8/view/LettersDialog$LettersAdapter;)Lcom/lx/launcher8/view/LettersDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lx/launcher8/view/LettersDialog;->dismiss()V

    .line 158
    .end local v1           #index:I
    :cond_0
    return-void
.end method
