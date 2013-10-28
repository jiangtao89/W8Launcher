.class public Lcom/anall/colorpick/ColorPickerDialog;
.super Landroid/app/AlertDialog;
.source "ColorPickerDialog.java"

# interfaces
.implements Lcom/anall/colorpick/ColorPickerView$OnColorChangedListener;


# instance fields
.field private mColorPicker:Lcom/anall/colorpick/ColorPickerView;

.field private mListener:Lcom/anall/colorpick/ColorPickerView$OnColorChangedListener;

.field private mNewColor:Lcom/anall/colorpick/ColorPanelView;

.field private mOldColor:Lcom/anall/colorpick/ColorPanelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "initialColor"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-direct {p0, p2}, Lcom/anall/colorpick/ColorPickerDialog;->init(I)V

    .line 43
    return-void
.end method

.method private init(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/anall/colorpick/ColorPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 49
    invoke-direct {p0, p1}, Lcom/anall/colorpick/ColorPickerDialog;->setUp(I)V

    .line 51
    return-void
.end method

.method private setUp(I)V
    .locals 6
    .parameter "color"

    .prologue
    const/4 v5, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/anall/colorpick/ColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 55
    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    check-cast v0, Landroid/view/LayoutInflater;

    .line 56
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/anall/colorpick/ColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "dialog_color_picker"

    const-string v4, "layout"

    invoke-static {v2, v3, v4}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 58
    .local v1, layout:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/anall/colorpick/ColorPickerDialog;->setView(Landroid/view/View;)V

    .line 60
    const-string v2, "Pick a Color"

    invoke-virtual {p0, v2}, Lcom/anall/colorpick/ColorPickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p0}, Lcom/anall/colorpick/ColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "color_picker_view"

    const-string v4, "id"

    invoke-static {v2, v3, v4}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/anall/colorpick/ColorPickerView;

    .line 63
    iput-object v2, p0, Lcom/anall/colorpick/ColorPickerDialog;->mColorPicker:Lcom/anall/colorpick/ColorPickerView;

    .line 65
    invoke-virtual {p0}, Lcom/anall/colorpick/ColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "old_color_panel"

    const-string v4, "id"

    invoke-static {v2, v3, v4}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/anall/colorpick/ColorPanelView;

    iput-object v2, p0, Lcom/anall/colorpick/ColorPickerDialog;->mOldColor:Lcom/anall/colorpick/ColorPanelView;

    .line 66
    invoke-virtual {p0}, Lcom/anall/colorpick/ColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "new_color_panel"

    const-string v4, "id"

    invoke-static {v2, v3, v4}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/anall/colorpick/ColorPanelView;

    iput-object v2, p0, Lcom/anall/colorpick/ColorPickerDialog;->mNewColor:Lcom/anall/colorpick/ColorPanelView;

    .line 68
    iget-object v2, p0, Lcom/anall/colorpick/ColorPickerDialog;->mOldColor:Lcom/anall/colorpick/ColorPanelView;

    invoke-virtual {v2}, Lcom/anall/colorpick/ColorPanelView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 69
    iget-object v3, p0, Lcom/anall/colorpick/ColorPickerDialog;->mColorPicker:Lcom/anall/colorpick/ColorPickerView;

    invoke-virtual {v3}, Lcom/anall/colorpick/ColorPickerView;->getDrawingOffset()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 70
    iget-object v4, p0, Lcom/anall/colorpick/ColorPickerDialog;->mColorPicker:Lcom/anall/colorpick/ColorPickerView;

    invoke-virtual {v4}, Lcom/anall/colorpick/ColorPickerView;->getDrawingOffset()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 68
    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 72
    iget-object v2, p0, Lcom/anall/colorpick/ColorPickerDialog;->mColorPicker:Lcom/anall/colorpick/ColorPickerView;

    invoke-virtual {v2, p0}, Lcom/anall/colorpick/ColorPickerView;->setOnColorChangedListener(Lcom/anall/colorpick/ColorPickerView$OnColorChangedListener;)V

    .line 74
    iget-object v2, p0, Lcom/anall/colorpick/ColorPickerDialog;->mOldColor:Lcom/anall/colorpick/ColorPanelView;

    invoke-virtual {v2, p1}, Lcom/anall/colorpick/ColorPanelView;->setColor(I)V

    .line 75
    iget-object v2, p0, Lcom/anall/colorpick/ColorPickerDialog;->mColorPicker:Lcom/anall/colorpick/ColorPickerView;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/anall/colorpick/ColorPickerView;->setColor(IZ)V

    .line 77
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerDialog;->mColorPicker:Lcom/anall/colorpick/ColorPickerView;

    invoke-virtual {v0}, Lcom/anall/colorpick/ColorPickerView;->getColor()I

    move-result v0

    return v0
.end method

.method public onColorChanged(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerDialog;->mNewColor:Lcom/anall/colorpick/ColorPanelView;

    invoke-virtual {v0, p1}, Lcom/anall/colorpick/ColorPanelView;->setColor(I)V

    .line 84
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerDialog;->mListener:Lcom/anall/colorpick/ColorPickerView$OnColorChangedListener;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerDialog;->mListener:Lcom/anall/colorpick/ColorPickerView$OnColorChangedListener;

    invoke-interface {v0, p1}, Lcom/anall/colorpick/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 88
    :cond_0
    return-void
.end method

.method public setAlphaSliderVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/anall/colorpick/ColorPickerDialog;->mColorPicker:Lcom/anall/colorpick/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/anall/colorpick/ColorPickerView;->setAlphaSliderVisible(Z)V

    .line 92
    return-void
.end method
