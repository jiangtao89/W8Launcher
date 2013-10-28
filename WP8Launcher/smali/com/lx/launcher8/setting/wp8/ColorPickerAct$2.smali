.class Lcom/lx/launcher8/setting/wp8/ColorPickerAct$2;
.super Ljava/lang/Object;
.source "ColorPickerAct.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->showPickColorDialog(Lcom/anall/colorpick/ColorPanelView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/ColorPickerAct;

.field private final synthetic val$cpv:Lcom/anall/colorpick/ColorPanelView;

.field private final synthetic val$d:Lcom/anall/colorpick/ColorPickerDialog;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/ColorPickerAct;Lcom/anall/colorpick/ColorPickerDialog;Lcom/anall/colorpick/ColorPanelView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/ColorPickerAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/ColorPickerAct;

    iput-object p2, p0, Lcom/lx/launcher8/setting/wp8/ColorPickerAct$2;->val$d:Lcom/anall/colorpick/ColorPickerDialog;

    iput-object p3, p0, Lcom/lx/launcher8/setting/wp8/ColorPickerAct$2;->val$cpv:Lcom/anall/colorpick/ColorPanelView;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 99
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ColorPickerAct$2;->val$d:Lcom/anall/colorpick/ColorPickerDialog;

    invoke-virtual {v3}, Lcom/anall/colorpick/ColorPickerDialog;->getColor()I

    move-result v0

    .line 100
    .local v0, color:I
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ColorPickerAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/ColorPickerAct;

    #getter for: Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->mCustom:Z
    invoke-static {v3}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->access$0(Lcom/lx/launcher8/setting/wp8/ColorPickerAct;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 101
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ColorPickerAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/ColorPickerAct;

    const/4 v4, 0x0

    #setter for: Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->mCustom:Z
    invoke-static {v3, v4}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->access$1(Lcom/lx/launcher8/setting/wp8/ColorPickerAct;Z)V

    .line 102
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ColorPickerAct$2;->val$cpv:Lcom/anall/colorpick/ColorPanelView;

    invoke-virtual {v3, v0}, Lcom/anall/colorpick/ColorPanelView;->setColor(I)V

    .line 103
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ColorPickerAct$2;->val$cpv:Lcom/anall/colorpick/ColorPanelView;

    invoke-virtual {v3, v0}, Lcom/anall/colorpick/ColorPanelView;->setId(I)V

    .line 104
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ColorPickerAct$2;->val$cpv:Lcom/anall/colorpick/ColorPanelView;

    if-eqz v3, :cond_1

    .line 105
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ColorPickerAct$2;->val$cpv:Lcom/anall/colorpick/ColorPanelView;

    invoke-virtual {v3}, Lcom/anall/colorpick/ColorPanelView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 106
    .local v1, p:Ljava/lang/Integer;
    const/4 v2, 0x0

    .line 107
    .local v2, pos:I
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 108
    :cond_0
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ColorPickerAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/ColorPickerAct;

    #calls: Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->saveCustomColor(II)V
    invoke-static {v3, v0, v2}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->access$2(Lcom/lx/launcher8/setting/wp8/ColorPickerAct;II)V

    .line 111
    .end local v1           #p:Ljava/lang/Integer;
    .end local v2           #pos:I
    :cond_1
    :goto_0
    return-void

    .line 110
    :cond_2
    iget-object v3, p0, Lcom/lx/launcher8/setting/wp8/ColorPickerAct$2;->this$0:Lcom/lx/launcher8/setting/wp8/ColorPickerAct;

    invoke-static {}, Lcom/lx/launcher8/util/ColorManager;->getInstance()Lcom/lx/launcher8/util/ColorManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/lx/launcher8/util/ColorManager;->getColorName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->setResultColor(ILjava/lang/String;)V

    goto :goto_0
.end method
