.class Lcom/lx/launcher8/AnallLauncher$5;
.super Ljava/lang/Object;
.source "AnallLauncher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/AnallLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/AnallLauncher;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/AnallLauncher;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/AnallLauncher$5;->this$0:Lcom/lx/launcher8/AnallLauncher;

    .line 1130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 1133
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090119

    if-ne v1, v2, :cond_0

    .line 1134
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher$5;->this$0:Lcom/lx/launcher8/AnallLauncher;

    #calls: Lcom/lx/launcher8/AnallLauncher;->goSearch()V
    invoke-static {v1}, Lcom/lx/launcher8/AnallLauncher;->access$5(Lcom/lx/launcher8/AnallLauncher;)V

    .line 1153
    :goto_0
    return-void

    .line 1135
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090111

    if-ne v1, v2, :cond_1

    .line 1136
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher$5;->this$0:Lcom/lx/launcher8/AnallLauncher;

    invoke-virtual {v1}, Lcom/lx/launcher8/AnallLauncher;->changeAppSort()V

    goto :goto_0

    .line 1138
    :cond_1
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher$5;->this$0:Lcom/lx/launcher8/AnallLauncher;

    iget-object v1, v1, Lcom/lx/launcher8/AnallLauncher;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1139
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher$5;->this$0:Lcom/lx/launcher8/AnallLauncher;

    iget-object v1, v1, Lcom/lx/launcher8/AnallLauncher;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1140
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher$5;->this$0:Lcom/lx/launcher8/AnallLauncher;

    iget-object v1, v1, Lcom/lx/launcher8/AnallLauncher;->mSearchEditText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1141
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher$5;->this$0:Lcom/lx/launcher8/AnallLauncher;

    #getter for: Lcom/lx/launcher8/AnallLauncher;->mSearchIv:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lx/launcher8/AnallLauncher;->access$6(Lcom/lx/launcher8/AnallLauncher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1142
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher$5;->this$0:Lcom/lx/launcher8/AnallLauncher;

    iget-object v1, v1, Lcom/lx/launcher8/AnallLauncher;->mAppAdapter:Lcom/lx/launcher8/adapter/AppAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/adapter/AppAdapter;->setSearch(Z)V

    .line 1143
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher$5;->this$0:Lcom/lx/launcher8/AnallLauncher;

    iget-object v1, v1, Lcom/lx/launcher8/AnallLauncher;->mAppGridView:Lcom/lx/launcher8/view/FilterGridView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/view/FilterGridView;->setFilterText(Ljava/lang/String;)V

    .line 1145
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher$5;->this$0:Lcom/lx/launcher8/AnallLauncher;

    invoke-virtual {v1, v3}, Lcom/lx/launcher8/AnallLauncher;->applyAppStyle(I)V

    .line 1146
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher$5;->this$0:Lcom/lx/launcher8/AnallLauncher;

    iget-object v1, v1, Lcom/lx/launcher8/AnallLauncher;->mSidebar:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1148
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher$5;->this$0:Lcom/lx/launcher8/AnallLauncher;

    iget-object v1, v1, Lcom/lx/launcher8/AnallLauncher;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1149
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher$5;->this$0:Lcom/lx/launcher8/AnallLauncher;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/lx/launcher8/AnallLauncher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1150
    .local v0, im:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/lx/launcher8/AnallLauncher$5;->this$0:Lcom/lx/launcher8/AnallLauncher;

    iget-object v1, v1, Lcom/lx/launcher8/AnallLauncher;->mSearchEditText:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method
