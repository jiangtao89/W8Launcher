.class Lcom/lx/launcher8/setting/FolderAppPickAct$1;
.super Ljava/lang/Object;
.source "FolderAppPickAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/setting/FolderAppPickAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/FolderAppPickAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/FolderAppPickAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/FolderAppPickAct$1;->this$0:Lcom/lx/launcher8/setting/FolderAppPickAct;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 218
    :goto_0
    :sswitch_0
    return-void

    .line 181
    :sswitch_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderAppPickAct$1;->this$0:Lcom/lx/launcher8/setting/FolderAppPickAct;

    #calls: Lcom/lx/launcher8/setting/FolderAppPickAct;->createPopup()V
    invoke-static {v0}, Lcom/lx/launcher8/setting/FolderAppPickAct;->access$0(Lcom/lx/launcher8/setting/FolderAppPickAct;)V

    goto :goto_0

    .line 184
    :sswitch_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderAppPickAct$1;->this$0:Lcom/lx/launcher8/setting/FolderAppPickAct;

    #getter for: Lcom/lx/launcher8/setting/FolderAppPickAct;->mFilter:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/FolderAppPickAct;->access$1(Lcom/lx/launcher8/setting/FolderAppPickAct;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderAppPickAct$1;->this$0:Lcom/lx/launcher8/setting/FolderAppPickAct;

    const/4 v1, 0x0

    #setter for: Lcom/lx/launcher8/setting/FolderAppPickAct;->mFilter:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/FolderAppPickAct;->access$2(Lcom/lx/launcher8/setting/FolderAppPickAct;I)V

    .line 186
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderAppPickAct$1;->this$0:Lcom/lx/launcher8/setting/FolderAppPickAct;

    #getter for: Lcom/lx/launcher8/setting/FolderAppPickAct;->mAdapter:Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;
    invoke-static {v0}, Lcom/lx/launcher8/setting/FolderAppPickAct;->access$3(Lcom/lx/launcher8/setting/FolderAppPickAct;)Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->displayAll()V

    .line 187
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderAppPickAct$1;->this$0:Lcom/lx/launcher8/setting/FolderAppPickAct;

    #getter for: Lcom/lx/launcher8/setting/FolderAppPickAct;->mFilterBtn:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/FolderAppPickAct;->access$4(Lcom/lx/launcher8/setting/FolderAppPickAct;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a01ed

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderAppPickAct$1;->this$0:Lcom/lx/launcher8/setting/FolderAppPickAct;

    #getter for: Lcom/lx/launcher8/setting/FolderAppPickAct;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lx/launcher8/setting/FolderAppPickAct;->access$5(Lcom/lx/launcher8/setting/FolderAppPickAct;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 192
    :sswitch_3
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderAppPickAct$1;->this$0:Lcom/lx/launcher8/setting/FolderAppPickAct;

    #getter for: Lcom/lx/launcher8/setting/FolderAppPickAct;->mFilter:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/FolderAppPickAct;->access$1(Lcom/lx/launcher8/setting/FolderAppPickAct;)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 193
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderAppPickAct$1;->this$0:Lcom/lx/launcher8/setting/FolderAppPickAct;

    #setter for: Lcom/lx/launcher8/setting/FolderAppPickAct;->mFilter:I
    invoke-static {v0, v1}, Lcom/lx/launcher8/setting/FolderAppPickAct;->access$2(Lcom/lx/launcher8/setting/FolderAppPickAct;I)V

    .line 194
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderAppPickAct$1;->this$0:Lcom/lx/launcher8/setting/FolderAppPickAct;

    #getter for: Lcom/lx/launcher8/setting/FolderAppPickAct;->mAdapter:Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;
    invoke-static {v0}, Lcom/lx/launcher8/setting/FolderAppPickAct;->access$3(Lcom/lx/launcher8/setting/FolderAppPickAct;)Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->displaySelected()V

    .line 195
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderAppPickAct$1;->this$0:Lcom/lx/launcher8/setting/FolderAppPickAct;

    #getter for: Lcom/lx/launcher8/setting/FolderAppPickAct;->mFilterBtn:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/FolderAppPickAct;->access$4(Lcom/lx/launcher8/setting/FolderAppPickAct;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a01ee

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderAppPickAct$1;->this$0:Lcom/lx/launcher8/setting/FolderAppPickAct;

    #getter for: Lcom/lx/launcher8/setting/FolderAppPickAct;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lx/launcher8/setting/FolderAppPickAct;->access$5(Lcom/lx/launcher8/setting/FolderAppPickAct;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 200
    :sswitch_4
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderAppPickAct$1;->this$0:Lcom/lx/launcher8/setting/FolderAppPickAct;

    #getter for: Lcom/lx/launcher8/setting/FolderAppPickAct;->mFilter:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/FolderAppPickAct;->access$1(Lcom/lx/launcher8/setting/FolderAppPickAct;)I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 201
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderAppPickAct$1;->this$0:Lcom/lx/launcher8/setting/FolderAppPickAct;

    #setter for: Lcom/lx/launcher8/setting/FolderAppPickAct;->mFilter:I
    invoke-static {v0, v2}, Lcom/lx/launcher8/setting/FolderAppPickAct;->access$2(Lcom/lx/launcher8/setting/FolderAppPickAct;I)V

    .line 202
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderAppPickAct$1;->this$0:Lcom/lx/launcher8/setting/FolderAppPickAct;

    #getter for: Lcom/lx/launcher8/setting/FolderAppPickAct;->mAdapter:Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;
    invoke-static {v0}, Lcom/lx/launcher8/setting/FolderAppPickAct;->access$3(Lcom/lx/launcher8/setting/FolderAppPickAct;)Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->dispalyMissed()V

    .line 203
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderAppPickAct$1;->this$0:Lcom/lx/launcher8/setting/FolderAppPickAct;

    #getter for: Lcom/lx/launcher8/setting/FolderAppPickAct;->mFilterBtn:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/FolderAppPickAct;->access$4(Lcom/lx/launcher8/setting/FolderAppPickAct;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a01ef

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderAppPickAct$1;->this$0:Lcom/lx/launcher8/setting/FolderAppPickAct;

    #getter for: Lcom/lx/launcher8/setting/FolderAppPickAct;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lx/launcher8/setting/FolderAppPickAct;->access$5(Lcom/lx/launcher8/setting/FolderAppPickAct;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 208
    :sswitch_5
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderAppPickAct$1;->this$0:Lcom/lx/launcher8/setting/FolderAppPickAct;

    #getter for: Lcom/lx/launcher8/setting/FolderAppPickAct;->mFilter:I
    invoke-static {v0}, Lcom/lx/launcher8/setting/FolderAppPickAct;->access$1(Lcom/lx/launcher8/setting/FolderAppPickAct;)I

    move-result v0

    if-eq v0, v3, :cond_3

    .line 209
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderAppPickAct$1;->this$0:Lcom/lx/launcher8/setting/FolderAppPickAct;

    #setter for: Lcom/lx/launcher8/setting/FolderAppPickAct;->mFilter:I
    invoke-static {v0, v3}, Lcom/lx/launcher8/setting/FolderAppPickAct;->access$2(Lcom/lx/launcher8/setting/FolderAppPickAct;I)V

    .line 210
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderAppPickAct$1;->this$0:Lcom/lx/launcher8/setting/FolderAppPickAct;

    #getter for: Lcom/lx/launcher8/setting/FolderAppPickAct;->mAdapter:Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;
    invoke-static {v0}, Lcom/lx/launcher8/setting/FolderAppPickAct;->access$3(Lcom/lx/launcher8/setting/FolderAppPickAct;)Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lx/launcher8/setting/adapter/ChooseFolderAppAdapter;->displayFilter()V

    .line 211
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderAppPickAct$1;->this$0:Lcom/lx/launcher8/setting/FolderAppPickAct;

    #getter for: Lcom/lx/launcher8/setting/FolderAppPickAct;->mFilterBtn:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lx/launcher8/setting/FolderAppPickAct;->access$4(Lcom/lx/launcher8/setting/FolderAppPickAct;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a01f0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/lx/launcher8/setting/FolderAppPickAct$1;->this$0:Lcom/lx/launcher8/setting/FolderAppPickAct;

    #getter for: Lcom/lx/launcher8/setting/FolderAppPickAct;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lx/launcher8/setting/FolderAppPickAct;->access$5(Lcom/lx/launcher8/setting/FolderAppPickAct;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 175
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x12 -> :sswitch_0
        0x13 -> :sswitch_1
        0x7f0900d2 -> :sswitch_2
        0x7f0900d3 -> :sswitch_3
        0x7f0900d4 -> :sswitch_4
        0x7f0900d5 -> :sswitch_5
    .end sparse-switch
.end method
