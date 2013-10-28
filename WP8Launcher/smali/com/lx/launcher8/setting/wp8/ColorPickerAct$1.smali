.class Lcom/lx/launcher8/setting/wp8/ColorPickerAct$1;
.super Ljava/lang/Object;
.source "ColorPickerAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/wp8/ColorPickerAct;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/wp8/ColorPickerAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/wp8/ColorPickerAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ColorPickerAct;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lx/launcher8/setting/wp8/ColorPickerAct$1;->this$0:Lcom/lx/launcher8/setting/wp8/ColorPickerAct;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->showPickColorDialog(Lcom/anall/colorpick/ColorPanelView;)V

    .line 88
    return-void
.end method
