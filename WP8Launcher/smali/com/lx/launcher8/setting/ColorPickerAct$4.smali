.class Lcom/lx/launcher8/setting/ColorPickerAct$4;
.super Ljava/lang/Object;
.source "ColorPickerAct.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lx/launcher8/setting/ColorPickerAct;->createGrid(Ljava/util/ArrayList;)Landroid/widget/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/setting/ColorPickerAct;

.field private final synthetic val$colorList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/setting/ColorPickerAct;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/setting/ColorPickerAct$4;->this$0:Lcom/lx/launcher8/setting/ColorPickerAct;

    iput-object p2, p0, Lcom/lx/launcher8/setting/ColorPickerAct$4;->val$colorList:Ljava/util/ArrayList;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/lx/launcher8/setting/ColorPickerAct$4;->val$colorList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lx/launcher8/setting/bean/ColorInfo;

    invoke-virtual {v1}, Lcom/lx/launcher8/setting/bean/ColorInfo;->getColorValue()I

    move-result v0

    .line 157
    .local v0, color:I
    iget-object v1, p0, Lcom/lx/launcher8/setting/ColorPickerAct$4;->this$0:Lcom/lx/launcher8/setting/ColorPickerAct;

    invoke-virtual {v1, v0}, Lcom/lx/launcher8/setting/ColorPickerAct;->setResultColor(I)V

    .line 158
    return-void
.end method
