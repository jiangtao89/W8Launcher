.class public Lcom/lx/launcher8/setting/wp8/ColorPickerAct;
.super Lcom/lx/launcher8/setting/wp8/ViewPageAct;
.source "ColorPickerAct.java"


# static fields
.field static final CUSTOM_COLOR_LEN:I = 0x4

.field static final CUSTOM_COLOR_SEPARATOR:Ljava/lang/String; = null

.field public static final EXTRAL_NAME:Ljava/lang/String; = "extral_name"

.field public static final EXTRAL_SUMMARY:Ljava/lang/String; = "extral_summary"

.field public static final EXTRAL_TEXT:Ljava/lang/String; = "extral_text"

.field public static final EXTRAL_TITILE:Ljava/lang/String; = "extral_title"

.field public static final EXTRAL_TITLE:Ljava/lang/String; = "extral_title"

.field public static final EXTRAL_TYPE:Ljava/lang/String; = "extral_type"

.field public static final EXTRAL_VALUE:Ljava/lang/String; = "extral_value"


# instance fields
.field private mCustom:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sput-object v0, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->CUSTOM_COLOR_SEPARATOR:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/setting/wp8/ColorPickerAct;)Z
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->mCustom:Z

    return v0
.end method

.method static synthetic access$1(Lcom/lx/launcher8/setting/wp8/ColorPickerAct;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->mCustom:Z

    return-void
.end method

.method static synthetic access$2(Lcom/lx/launcher8/setting/wp8/ColorPickerAct;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 269
    invoke-direct {p0, p1, p2}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->saveCustomColor(II)V

    return-void
.end method

.method private createColorList(I)Ljava/util/ArrayList;
    .locals 5
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/setting/bean/ColorInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 218
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->getNormalColors()Ljava/util/ArrayList;

    move-result-object v1

    .line 219
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lx/launcher8/setting/bean/ColorInfo;>;"
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 220
    .local v2, res:Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 221
    .local v0, color:Lcom/lx/launcher8/setting/bean/ColorInfo;
    if-eq p1, v4, :cond_0

    .line 222
    new-instance v0, Lcom/lx/launcher8/setting/bean/ColorInfo;

    .end local v0           #color:Lcom/lx/launcher8/setting/bean/ColorInfo;
    invoke-direct {v0}, Lcom/lx/launcher8/setting/bean/ColorInfo;-><init>()V

    .line 223
    .restart local v0       #color:Lcom/lx/launcher8/setting/bean/ColorInfo;
    const v3, 0x7f0b002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/lx/launcher8/setting/bean/ColorInfo;->setColorValue(I)V

    .line 224
    const v3, 0x7f0a02a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/lx/launcher8/setting/bean/ColorInfo;->setColorName(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_0
    new-instance v0, Lcom/lx/launcher8/setting/bean/ColorInfo;

    .end local v0           #color:Lcom/lx/launcher8/setting/bean/ColorInfo;
    invoke-direct {v0}, Lcom/lx/launcher8/setting/bean/ColorInfo;-><init>()V

    .line 229
    .restart local v0       #color:Lcom/lx/launcher8/setting/bean/ColorInfo;
    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    .line 230
    const v3, 0x7f0b0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/lx/launcher8/setting/bean/ColorInfo;->setColorValue(I)V

    .line 231
    const v3, 0x7f0a006e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/lx/launcher8/setting/bean/ColorInfo;->setColorName(Ljava/lang/String;)V

    .line 236
    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v0, Lcom/lx/launcher8/setting/bean/ColorInfo;

    .end local v0           #color:Lcom/lx/launcher8/setting/bean/ColorInfo;
    invoke-direct {v0}, Lcom/lx/launcher8/setting/bean/ColorInfo;-><init>()V

    .line 239
    .restart local v0       #color:Lcom/lx/launcher8/setting/bean/ColorInfo;
    const/high16 v3, 0x7f0b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/lx/launcher8/setting/bean/ColorInfo;->setColorValue(I)V

    .line 240
    const v3, 0x7f0a006f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/lx/launcher8/setting/bean/ColorInfo;->setColorName(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    if-ne p1, v4, :cond_1

    .line 244
    new-instance v0, Lcom/lx/launcher8/setting/bean/ColorInfo;

    .end local v0           #color:Lcom/lx/launcher8/setting/bean/ColorInfo;
    invoke-direct {v0}, Lcom/lx/launcher8/setting/bean/ColorInfo;-><init>()V

    .line 245
    .restart local v0       #color:Lcom/lx/launcher8/setting/bean/ColorInfo;
    const v3, 0x7f0b0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/lx/launcher8/setting/bean/ColorInfo;->setColorValue(I)V

    .line 246
    const v3, 0x7f0a0063

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/lx/launcher8/setting/bean/ColorInfo;->setColorName(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_1
    return-object v1

    .line 233
    :cond_2
    const v3, 0x7f0b001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/lx/launcher8/setting/bean/ColorInfo;->setColorValue(I)V

    .line 234
    const v3, 0x7f0a0326

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/lx/launcher8/setting/bean/ColorInfo;->setColorName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createGrid(Ljava/util/ArrayList;)Landroid/widget/GridView;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/setting/bean/ColorInfo;",
            ">;)",
            "Landroid/widget/GridView;"
        }
    .end annotation

    .prologue
    .local p1, colorList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lx/launcher8/setting/bean/ColorInfo;>;"
    const/4 v5, -0x1

    .line 130
    const/high16 v4, 0x4140

    invoke-static {p0, v4}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v4

    float-to-int v3, v4

    .line 131
    .local v3, space:I
    new-instance v1, Landroid/widget/GridView;

    invoke-direct {v1, p0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 132
    .local v1, grid:Landroid/widget/GridView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 133
    .local v2, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 134
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 136
    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 137
    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 138
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 139
    new-instance v0, Lcom/lx/launcher8/setting/adapter/ChooseColorAdapter;

    iget-object v4, p0, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->mDeskSet:Lcom/lx/launcher8/cfg/DeskSetting;

    invoke-virtual {v4}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v4

    invoke-direct {v0, p0, p1, v4}, Lcom/lx/launcher8/setting/adapter/ChooseColorAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    .line 140
    .local v0, adapter:Lcom/lx/launcher8/setting/adapter/ChooseColorAdapter;
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 141
    new-instance v4, Lcom/lx/launcher8/setting/wp8/ColorPickerAct$4;

    invoke-direct {v4, p0, p1}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct$4;-><init>(Lcom/lx/launcher8/setting/wp8/ColorPickerAct;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 149
    return-object v1
.end method

.method private createTable(Ljava/util/ArrayList;Z)Landroid/view/View;
    .locals 20
    .parameter
    .parameter "hasCustom"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/setting/bean/ColorInfo;",
            ">;Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, colorList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lx/launcher8/setting/bean/ColorInfo;>;"
    new-instance v3, Lcom/lx/launcher8/setting/wp8/ColorPickerAct$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct$5;-><init>(Lcom/lx/launcher8/setting/wp8/ColorPickerAct;)V

    .line 160
    .local v3, click:Landroid/view/View$OnClickListener;
    const/high16 v17, 0x4140

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v17

    move/from16 v0, v17

    float-to-int v12, v0

    .line 161
    .local v12, space:I
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v16, v0

    .line 162
    .local v16, width:I
    mul-int/lit8 v17, v12, 0x5

    sub-int v17, v16, v17

    div-int/lit8 v8, v17, 0x4

    .line 163
    .local v8, itemWidth:I
    new-instance v10, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 164
    .local v10, scrollView:Landroid/widget/ScrollView;
    new-instance v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 165
    .local v13, tl:Landroid/widget/LinearLayout;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 166
    invoke-virtual {v10, v13}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 167
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 168
    .local v11, size:I
    const/4 v14, 0x0

    .line 169
    .local v14, tr:Lcom/lx/launcher8/view/DivideLayout;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-lt v7, v11, :cond_1

    .line 183
    if-eqz p2, :cond_0

    .line 184
    new-instance v9, Lcom/lx/launcher8/setting/wp8/ColorPickerAct$6;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct$6;-><init>(Lcom/lx/launcher8/setting/wp8/ColorPickerAct;)V

    .line 192
    .local v9, longClick:Landroid/view/View$OnLongClickListener;
    new-instance v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 193
    .local v15, tv:Landroid/widget/TextView;
    const/16 v17, 0x53

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 194
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v1, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    const v17, 0x7f0a0148

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 197
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v15, v12, v0, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 198
    const/high16 v17, 0x4180

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 199
    invoke-direct/range {p0 .. p0}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->getCustomColors()[I

    move-result-object v6

    .line 200
    .local v6, customs:[I
    new-instance v14, Lcom/lx/launcher8/view/DivideLayout;

    .end local v14           #tr:Lcom/lx/launcher8/view/DivideLayout;
    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/lx/launcher8/view/DivideLayout;-><init>(Landroid/content/Context;)V

    .line 201
    .restart local v14       #tr:Lcom/lx/launcher8/view/DivideLayout;
    invoke-virtual {v14, v8}, Lcom/lx/launcher8/view/DivideLayout;->setItemWidth(I)V

    .line 202
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v14, v0, v12, v1, v2}, Lcom/lx/launcher8/view/DivideLayout;->setPadding(IIII)V

    .line 203
    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 204
    const/4 v7, 0x0

    :goto_1
    array-length v0, v6

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v7, v0, :cond_4

    .line 214
    .end local v6           #customs:[I
    .end local v9           #longClick:Landroid/view/View$OnLongClickListener;
    .end local v15           #tv:Landroid/widget/TextView;
    :cond_0
    return-object v10

    .line 170
    :cond_1
    if-eqz v14, :cond_2

    rem-int/lit8 v17, v7, 0x4

    if-nez v17, :cond_3

    .line 171
    :cond_2
    new-instance v14, Lcom/lx/launcher8/view/DivideLayout;

    .end local v14           #tr:Lcom/lx/launcher8/view/DivideLayout;
    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/lx/launcher8/view/DivideLayout;-><init>(Landroid/content/Context;)V

    .line 172
    .restart local v14       #tr:Lcom/lx/launcher8/view/DivideLayout;
    invoke-virtual {v14, v8}, Lcom/lx/launcher8/view/DivideLayout;->setItemWidth(I)V

    .line 173
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v14, v0, v12, v1, v2}, Lcom/lx/launcher8/view/DivideLayout;->setPadding(IIII)V

    .line 174
    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    :cond_3
    new-instance v5, Lcom/anall/colorpick/ColorPanelView;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/anall/colorpick/ColorPanelView;-><init>(Landroid/content/Context;)V

    .line 177
    .local v5, cpv:Lcom/anall/colorpick/ColorPanelView;
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lx/launcher8/setting/bean/ColorInfo;

    invoke-virtual/range {v17 .. v17}, Lcom/lx/launcher8/setting/bean/ColorInfo;->getColorValue()I

    move-result v4

    .line 178
    .local v4, color:I
    invoke-virtual {v5, v3}, Lcom/anall/colorpick/ColorPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-virtual {v5, v4}, Lcom/anall/colorpick/ColorPanelView;->setColor(I)V

    .line 180
    invoke-virtual {v5, v4}, Lcom/anall/colorpick/ColorPanelView;->setId(I)V

    .line 181
    new-instance v17, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, v17

    invoke-direct {v0, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v5, v0}, Lcom/lx/launcher8/view/DivideLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 205
    .end local v4           #color:I
    .end local v5           #cpv:Lcom/anall/colorpick/ColorPanelView;
    .restart local v6       #customs:[I
    .restart local v9       #longClick:Landroid/view/View$OnLongClickListener;
    .restart local v15       #tv:Landroid/widget/TextView;
    :cond_4
    new-instance v5, Lcom/anall/colorpick/ColorPanelView;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/anall/colorpick/ColorPanelView;-><init>(Landroid/content/Context;)V

    .line 206
    .restart local v5       #cpv:Lcom/anall/colorpick/ColorPanelView;
    new-instance v17, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, v17

    invoke-direct {v0, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v5, v0}, Lcom/lx/launcher8/view/DivideLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    invoke-virtual {v5, v9}, Lcom/anall/colorpick/ColorPanelView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 208
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/anall/colorpick/ColorPanelView;->setTag(Ljava/lang/Object;)V

    .line 209
    invoke-virtual {v5, v3}, Lcom/anall/colorpick/ColorPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    aget v17, v6, v7

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/anall/colorpick/ColorPanelView;->setColor(I)V

    .line 211
    aget v17, v6, v7

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/anall/colorpick/ColorPanelView;->setId(I)V

    .line 204
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1
.end method

.method private getCustomColors()[I
    .locals 8

    .prologue
    const/4 v7, 0x4

    .line 254
    new-array v1, v7, [I

    .line 255
    .local v1, customs:[I
    const/4 v5, -0x1

    invoke-static {v1, v5}, Ljava/util/Arrays;->fill([II)V

    .line 256
    const-string v5, "custom_color"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 257
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v5, "custom_color"

    const-string v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 258
    .local v4, store:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 259
    sget-object v5, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->CUSTOM_COLOR_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, colors:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v5, v0

    if-ne v5, v7, :cond_0

    .line 261
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v7, :cond_1

    .line 266
    .end local v0           #colors:[Ljava/lang/String;
    .end local v2           #i:I
    :cond_0
    return-object v1

    .line 262
    .restart local v0       #colors:[Ljava/lang/String;
    .restart local v2       #i:I
    :cond_1
    aget-object v5, v0, v2

    invoke-static {v5}, Lcom/app/common/utils/UConvert;->toInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v1, v2

    .line 261
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getMoreColors()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/setting/bean/ColorInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v1, colorList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lx/launcher8/setting/bean/ColorInfo;>;"
    const/16 v3, 0x7f

    .local v3, i:I
    :goto_0
    const/4 v5, -0x1

    if-gt v3, v5, :cond_0

    .line 298
    return-object v1

    .line 291
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "color_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "color"

    invoke-static {p0, v5, v6}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 292
    .local v4, id:I
    new-instance v0, Lcom/lx/launcher8/setting/bean/ColorInfo;

    invoke-direct {v0}, Lcom/lx/launcher8/setting/bean/ColorInfo;-><init>()V

    .line 293
    .local v0, color:Lcom/lx/launcher8/setting/bean/ColorInfo;
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 294
    .local v2, colorValue:I
    invoke-virtual {v0, v2}, Lcom/lx/launcher8/setting/bean/ColorInfo;->setColorValue(I)V

    .line 295
    invoke-static {}, Lcom/lx/launcher8/util/ColorManager;->getInstance()Lcom/lx/launcher8/util/ColorManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/lx/launcher8/util/ColorManager;->getColorName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/lx/launcher8/setting/bean/ColorInfo;->setColorName(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method private getNormalColors()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lx/launcher8/setting/bean/ColorInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v1, colorList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lx/launcher8/setting/bean/ColorInfo;>;"
    const/16 v2, 0x80

    .local v2, i:I
    :goto_0
    const/16 v4, 0x91

    if-lt v2, v4, :cond_0

    .line 317
    return-object v1

    .line 310
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "color_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "color"

    invoke-static {p0, v4, v5}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 311
    .local v3, id:I
    new-instance v0, Lcom/lx/launcher8/setting/bean/ColorInfo;

    invoke-direct {v0}, Lcom/lx/launcher8/setting/bean/ColorInfo;-><init>()V

    .line 312
    .local v0, color:Lcom/lx/launcher8/setting/bean/ColorInfo;
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/lx/launcher8/setting/bean/ColorInfo;->setColorValue(I)V

    .line 313
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "color_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "string"

    invoke-static {p0, v4, v5}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 314
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/lx/launcher8/setting/bean/ColorInfo;->setColorName(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private saveCustomColor(II)V
    .locals 6
    .parameter "newColor"
    .parameter "index"

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->getCustomColors()[I

    move-result-object v0

    .line 271
    .local v0, customs:[I
    if-ltz p2, :cond_0

    array-length v4, v0

    if-lt p2, v4, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    aput p1, v0, p2

    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/4 v4, 0x4

    if-lt v2, v4, :cond_2

    .line 279
    const-string v4, "custom_color"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 280
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "custom_color"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 277
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    aget v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->CUSTOM_COLOR_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected initData()V
    .locals 13

    .prologue
    const v12, 0x7f09014d

    const/4 v11, -0x1

    .line 60
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "extral_type"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 61
    .local v6, type:I
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "extral_text"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, text:Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v8, ""

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    const v8, 0x7f0a0146

    invoke-virtual {p0, v8}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "extral_title"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, title:Ljava/lang/String;
    if-eqz v5, :cond_2

    const-string v8, ""

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    const v8, 0x7f0a000c

    invoke-virtual {p0, v8}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 65
    :cond_3
    iget-object v8, p0, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 68
    .local v1, layout:Landroid/widget/RelativeLayout;
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 69
    .local v0, btn:Landroid/widget/Button;
    const v8, 0x7f0a0147

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setText(I)V

    .line 70
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->getSelectorTextColor()Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 71
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->getSelectorButton()I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 72
    const/high16 v8, 0x4140

    invoke-static {p0, v8}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 73
    .local v2, margin:I
    const/4 v8, -0x2

    invoke-static {v11, v8}, Lcom/app/common/utils/ViewHelper;->getRLParam(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    .line 74
    .local v3, rlp:Landroid/widget/RelativeLayout$LayoutParams;
    div-int/lit8 v8, v2, 0x2

    div-int/lit8 v9, v2, 0x2

    invoke-virtual {v3, v2, v8, v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 75
    const/16 v8, 0xc

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 76
    invoke-virtual {v1, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    invoke-virtual {v0, v12}, Landroid/widget/Button;->setId(I)V

    .line 78
    invoke-direct {p0, v6}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->createColorList(I)Ljava/util/ArrayList;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->createTable(Ljava/util/ArrayList;Z)Landroid/view/View;

    move-result-object v7

    .line 79
    .local v7, view:Landroid/view/View;
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v3           #rlp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v3, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 80
    .restart local v3       #rlp:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v8, 0x2

    invoke-virtual {v3, v8, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 81
    invoke-virtual {v1, v7, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    invoke-virtual {p0, v4, v1}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 83
    const v8, 0x7f0a00ea

    invoke-virtual {p0, v8}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->getMoreColors()Ljava/util/ArrayList;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->createGrid(Ljava/util/ArrayList;)Landroid/widget/GridView;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->addPage(Ljava/lang/String;Landroid/view/View;)V

    .line 84
    new-instance v8, Lcom/lx/launcher8/setting/wp8/ColorPickerAct$1;

    invoke-direct {v8, p0}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct$1;-><init>(Lcom/lx/launcher8/setting/wp8/ColorPickerAct;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 322
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 323
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->setResult(I)V

    .line 325
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/lx/launcher8/setting/wp8/ViewPageAct;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method setResultColor(ILjava/lang/String;)V
    .locals 2
    .parameter "color"
    .parameter "name"

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 123
    .local v0, data:Landroid/content/Intent;
    const-string v1, "extral_value"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    const-string v1, "extral_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->setResult(ILandroid/content/Intent;)V

    .line 126
    invoke-virtual {p0}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->finish()V

    .line 127
    return-void
.end method

.method showPickColorDialog(Lcom/anall/colorpick/ColorPanelView;)V
    .locals 3
    .parameter "cpv"

    .prologue
    .line 94
    new-instance v0, Lcom/anall/colorpick/ColorPickerDialog;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1}, Lcom/anall/colorpick/ColorPickerDialog;-><init>(Landroid/content/Context;I)V

    .line 95
    .local v0, d:Lcom/anall/colorpick/ColorPickerDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anall/colorpick/ColorPickerDialog;->setAlphaSliderVisible(Z)V

    .line 96
    const v1, 0x7f0a0077

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lx/launcher8/setting/wp8/ColorPickerAct$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct$2;-><init>(Lcom/lx/launcher8/setting/wp8/ColorPickerAct;Lcom/anall/colorpick/ColorPickerDialog;Lcom/anall/colorpick/ColorPanelView;)V

    invoke-virtual {v0, v1, v2}, Lcom/anall/colorpick/ColorPickerDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 113
    const v1, 0x7f0a0078

    invoke-virtual {p0, v1}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lx/launcher8/setting/wp8/ColorPickerAct$3;

    invoke-direct {v2, p0}, Lcom/lx/launcher8/setting/wp8/ColorPickerAct$3;-><init>(Lcom/lx/launcher8/setting/wp8/ColorPickerAct;)V

    invoke-virtual {v0, v1, v2}, Lcom/anall/colorpick/ColorPickerDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 118
    invoke-virtual {v0}, Lcom/anall/colorpick/ColorPickerDialog;->show()V

    .line 119
    return-void
.end method
