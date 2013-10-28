.class Lcom/app/common/view/CustomDialog$MyListener;
.super Ljava/lang/Object;
.source "CustomDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/common/view/CustomDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyListener"
.end annotation


# instance fields
.field private index:I

.field private params:[Ljava/lang/String;

.field final synthetic this$0:Lcom/app/common/view/CustomDialog;


# direct methods
.method public constructor <init>(Lcom/app/common/view/CustomDialog;I[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "index"
    .parameter "params"

    .prologue
    .line 525
    iput-object p1, p0, Lcom/app/common/view/CustomDialog$MyListener;->this$0:Lcom/app/common/view/CustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    iput p2, p0, Lcom/app/common/view/CustomDialog$MyListener;->index:I

    .line 527
    iput-object p3, p0, Lcom/app/common/view/CustomDialog$MyListener;->params:[Ljava/lang/String;

    .line 528
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 539
    iget v0, p0, Lcom/app/common/view/CustomDialog$MyListener;->index:I

    packed-switch v0, :pswitch_data_0

    .line 549
    :goto_0
    return-void

    .line 541
    :pswitch_0
    iget-object v0, p0, Lcom/app/common/view/CustomDialog$MyListener;->this$0:Lcom/app/common/view/CustomDialog;

    #getter for: Lcom/app/common/view/CustomDialog;->mEditTextA:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/app/common/view/CustomDialog;->access$1(Lcom/app/common/view/CustomDialog;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/app/common/view/CustomDialog$MyListener;->params:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 544
    :pswitch_1
    iget-object v0, p0, Lcom/app/common/view/CustomDialog$MyListener;->this$0:Lcom/app/common/view/CustomDialog;

    #getter for: Lcom/app/common/view/CustomDialog;->mEditTextB:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/app/common/view/CustomDialog;->access$2(Lcom/app/common/view/CustomDialog;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/app/common/view/CustomDialog$MyListener;->params:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 539
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 532
    new-instance v0, Lcom/app/common/adapter/ItemHintMoreAdapter;

    iget-object v1, p0, Lcom/app/common/view/CustomDialog$MyListener;->this$0:Lcom/app/common/view/CustomDialog;

    #getter for: Lcom/app/common/view/CustomDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/app/common/view/CustomDialog;->access$0(Lcom/app/common/view/CustomDialog;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/app/common/view/CustomDialog$MyListener;->this$0:Lcom/app/common/view/CustomDialog;

    #getter for: Lcom/app/common/view/CustomDialog;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/app/common/view/CustomDialog;->access$0(Lcom/app/common/view/CustomDialog;)Landroid/content/Context;

    move-result-object v5

    .line 533
    sget-object v6, Lcom/app/common/config/Resources;->doc:Ljava/lang/String;

    .line 532
    invoke-static {v5, v6}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    aput v5, v2, v3

    .line 533
    iget-object v3, p0, Lcom/app/common/view/CustomDialog$MyListener;->params:[Ljava/lang/String;

    move-object v5, v4

    .line 532
    invoke-direct/range {v0 .. v5}, Lcom/app/common/adapter/ItemHintMoreAdapter;-><init>(Landroid/content/Context;[I[Ljava/lang/String;[Ljava/lang/String;[I)V

    .line 534
    .local v0, adapter:Lcom/app/common/adapter/ItemHintMoreAdapter;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/app/common/view/CustomDialog$MyListener;->this$0:Lcom/app/common/view/CustomDialog;

    #getter for: Lcom/app/common/view/CustomDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/app/common/view/CustomDialog;->access$0(Lcom/app/common/view/CustomDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 535
    return-void
.end method
