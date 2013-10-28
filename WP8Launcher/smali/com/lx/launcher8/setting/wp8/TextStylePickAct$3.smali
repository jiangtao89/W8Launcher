.class Lcom/lx/launcher8/setting/wp8/TextStylePickAct$3;
.super Ljava/lang/Object;
.source "TextStylePickAct.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->addRadioGroup(I[Ljava/lang/String;I)Landroid/widget/RadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/TextStylePickAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/TextStylePickAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/TextStylePickAct;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .parameter "group"
    .parameter "checkedId"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 178
    packed-switch p2, :pswitch_data_0

    .line 188
    :goto_0
    return-void

    .line 180
    :pswitch_0
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/TextStylePickAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->editText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->access$1(Lcom/lx/launcher8/setting/wp8/TextStylePickAct;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 181
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/TextStylePickAct;

    iput v1, v0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->specialFunTileText:I

    goto :goto_0

    .line 184
    :pswitch_1
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/TextStylePickAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->editText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->access$1(Lcom/lx/launcher8/setting/wp8/TextStylePickAct;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 185
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct$3;->this$0:Lcom/lx/launcher8/setting/wp8/TextStylePickAct;

    iput v2, v0, Lcom/lx/launcher8/setting/wp8/TextStylePickAct;->specialFunTileText:I

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
