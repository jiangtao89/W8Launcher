.class Lcom/lx/launcher8/AnallLauncher$4;
.super Ljava/lang/Object;
.source "AnallLauncher.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/AnallLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lx/launcher8/AnallLauncher;


# direct methods
.method constructor <init>(Lcom/lx/launcher8/AnallLauncher;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lx/launcher8/AnallLauncher$4;->this$0:Lcom/lx/launcher8/AnallLauncher;

    .line 1062
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/AnallLauncher$4;)Lcom/lx/launcher8/AnallLauncher;
    .locals 1
    .parameter

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/lx/launcher8/AnallLauncher$4;->this$0:Lcom/lx/launcher8/AnallLauncher;

    return-object v0
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 16
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 1065
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/anall/app/bean/AppInfo;

    .line 1066
    .local v6, info:Lcom/anall/app/bean/AppInfo;
    iget-wide v12, v6, Lcom/anall/app/bean/AppInfo;->id:J

    const-wide/16 v14, -0x63

    cmp-long v12, v12, v14

    if-nez v12, :cond_0

    .line 1067
    const/4 v12, 0x1

    .line 1126
    :goto_0
    return v12

    .line 1069
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lx/launcher8/AnallLauncher$4;->this$0:Lcom/lx/launcher8/AnallLauncher;

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    const v13, 0x7f030077

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 1070
    .local v9, popview:Landroid/view/View;
    new-instance v8, Landroid/widget/PopupWindow;

    const/4 v12, -0x1

    const/4 v13, -0x2

    .line 1071
    const/4 v14, 0x1

    .line 1070
    invoke-direct {v8, v9, v12, v13, v14}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 1072
    .local v8, pop:Landroid/widget/PopupWindow;
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1073
    const/high16 v2, -0x100

    .local v2, backColor:I
    const/4 v10, -0x1

    .line 1074
    .local v10, textColor:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lx/launcher8/AnallLauncher$4;->this$0:Lcom/lx/launcher8/AnallLauncher;

    #getter for: Lcom/lx/launcher8/AnallLauncher;->mSetting:Lcom/lx/launcher8/cfg/DeskSetting;
    invoke-static {v12}, Lcom/lx/launcher8/AnallLauncher;->access$3(Lcom/lx/launcher8/AnallLauncher;)Lcom/lx/launcher8/cfg/DeskSetting;

    move-result-object v12

    invoke-virtual {v12}, Lcom/lx/launcher8/cfg/DeskSetting;->getThemePaper()I

    move-result v12

    if-eqz v12, :cond_1

    .line 1075
    const/4 v2, -0x1

    .line 1076
    const/high16 v10, -0x100

    .line 1078
    :cond_1
    new-instance v12, Lcom/lx/launcher8/view/ColorDrawable;

    invoke-direct {v12, v2}, Lcom/lx/launcher8/view/ColorDrawable;-><init>(I)V

    invoke-virtual {v8, v12}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1079
    new-instance v4, Lcom/lx/launcher8/AnallLauncher$4$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v6, v8}, Lcom/lx/launcher8/AnallLauncher$4$1;-><init>(Lcom/lx/launcher8/AnallLauncher$4;Lcom/anall/app/bean/AppInfo;Landroid/widget/PopupWindow;)V

    .line 1100
    .local v4, click:Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lx/launcher8/AnallLauncher$4;->this$0:Lcom/lx/launcher8/AnallLauncher;

    const/high16 v13, 0x41a0

    invoke-static {v12, v13}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 1101
    .local v7, margin:I
    const v12, 0x7f0901fd

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1102
    .local v3, btn:Landroid/widget/TextView;
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1103
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v3, v7, v12, v13, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1104
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1105
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1106
    const v12, 0x7f0901fe

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #btn:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1107
    .restart local v3       #btn:Landroid/widget/TextView;
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1108
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v3, v7, v12, v13, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1109
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1110
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1111
    const v12, 0x7f0901ff

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #btn:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1112
    .restart local v3       #btn:Landroid/widget/TextView;
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v3, v7, v12, v13, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1113
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1114
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1115
    iget v12, v6, Lcom/anall/app/bean/AppInfo;->isSystem:I

    if-nez v12, :cond_2

    .line 1116
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1118
    :cond_2
    const/4 v12, 0x2

    new-array v11, v12, [I

    .line 1119
    .local v11, xy:[I
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1120
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lx/launcher8/AnallLauncher$4;->this$0:Lcom/lx/launcher8/AnallLauncher;

    invoke-virtual {v12}, Lcom/lx/launcher8/AnallLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v5, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1121
    .local v5, height:I
    const/4 v12, 0x1

    aget v12, v11, v12

    div-int/lit8 v13, v5, 0x2

    if-le v12, v13, :cond_3

    .line 1122
    const/16 v12, 0x53

    const/4 v13, 0x0

    const/4 v14, 0x1

    aget v14, v11, v14

    sub-int v14, v5, v14

    move-object/from16 v0, p2

    invoke-virtual {v8, v0, v12, v13, v14}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1126
    :goto_1
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1124
    :cond_3
    const/16 v12, 0x33

    const/4 v13, 0x0

    const/4 v14, 0x1

    aget v14, v11, v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p2

    invoke-virtual {v8, v0, v12, v13, v14}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1
.end method
