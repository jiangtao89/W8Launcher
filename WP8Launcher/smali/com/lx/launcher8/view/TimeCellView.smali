.class public Lcom/lx/launcher8/view/TimeCellView;
.super Lcom/lx/launcher8/view/CellView;
.source "TimeCellView.java"

# interfaces
.implements Lcom/lx/launcher8/view/DynamicCell;


# instance fields
.field private mSdf:Ljava/text/SimpleDateFormat;

.field private mShowChinese:Landroid/widget/TextView;

.field private mShowTime:Landroid/widget/TextView;

.field private mShowWeek:Landroid/widget/TextView;

.field private mTimeRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lx/launcher8/bean/ItemCell;)V
    .locals 1
    .parameter "context"
    .parameter "info"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/lx/launcher8/view/CellView;-><init>(Landroid/content/Context;Lcom/lx/launcher8/bean/ItemCell;)V

    .line 81
    new-instance v0, Lcom/lx/launcher8/view/TimeCellView$1;

    invoke-direct {v0, p0}, Lcom/lx/launcher8/view/TimeCellView$1;-><init>(Lcom/lx/launcher8/view/TimeCellView;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/TimeCellView;->mTimeRunnable:Ljava/lang/Runnable;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/lx/launcher8/view/TimeCellView;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/lx/launcher8/view/TimeCellView;->updateTime()V

    return-void
.end method

.method static synthetic access$1(Lcom/lx/launcher8/view/TimeCellView;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lx/launcher8/view/TimeCellView;->mTimeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private setTextColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lx/launcher8/view/TimeCellView;->mShowTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    iget-object v0, p0, Lcom/lx/launcher8/view/TimeCellView;->mShowWeek:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    iget-object v0, p0, Lcom/lx/launcher8/view/TimeCellView;->mShowChinese:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    return-void
.end method

.method private updateTime()V
    .locals 21

    .prologue
    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/view/TimeCellView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 90
    .local v5, context:Landroid/content/Context;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 91
    .local v3, calendar:Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/view/TimeCellView;->mSdf:Ljava/text/SimpleDateFormat;

    move-object/from16 v18, v0

    new-instance v19, Ljava/util/Date;

    invoke-direct/range {v19 .. v19}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v18 .. v19}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 92
    .local v6, date:Ljava/lang/String;
    const-string v18, "#"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v17, v18, v19

    .line 93
    .local v17, year:Ljava/lang/String;
    const-string v18, "#"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    aget-object v9, v18, v19

    .line 94
    .local v9, month:Ljava/lang/String;
    const-string v18, "#"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x2

    aget-object v7, v18, v19

    .line 95
    .local v7, day:Ljava/lang/String;
    const-string v18, "#"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x3

    aget-object v11, v18, v19

    .line 96
    .local v11, time:Ljava/lang/String;
    const/16 v18, 0x7

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    add-int/lit8 v15, v18, -0x1

    .line 97
    .local v15, week:I
    invoke-static {v15, v5}, Lcom/lx/launcher8/util/Utils;->getWeek(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    .line 98
    .local v16, weekStr:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/lx/launcher8/view/TimeCellView;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "time_12_24"

    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 99
    .local v12, timeFormat:Ljava/lang/String;
    invoke-static {v11, v12}, Lcom/lx/launcher8/util/Utils;->getPmTime(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 101
    .local v13, times:[Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v18, v13, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v14

    .line 102
    .local v14, tlen:I
    new-instance v10, Landroid/text/SpannableString;

    new-instance v18, Ljava/lang/StringBuilder;

    const/16 v19, 0x0

    aget-object v19, v13, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x1

    aget-object v19, v13, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 103
    .local v10, ss:Landroid/text/SpannableString;
    const/16 v18, 0x1

    aget-object v18, v13, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_0

    .line 104
    new-instance v18, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v19, 0x12

    const/16 v20, 0x1

    invoke-direct/range {v18 .. v20}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    add-int/lit8 v19, v14, 0x1

    const/16 v20, 0x1

    aget-object v20, v13, v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    .line 105
    const/16 v20, 0x21

    .line 104
    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v10, v0, v14, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 107
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/view/TimeCellView;->mShowTime:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/view/TimeCellView;->mShowTime:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 111
    const v18, 0x7f0a0005

    :try_start_0
    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 112
    .local v8, language:Ljava/lang/String;
    const-string v18, "zh"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 113
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 114
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 113
    invoke-static/range {v18 .. v20}, Lcom/lx/launcher8/util/Utils;->getChineseTime(III)Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, chineseTime:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/view/TimeCellView;->mShowChinese:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v4           #chineseTime:Ljava/lang/String;
    .end local v8           #language:Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x5

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 120
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    invoke-static {v0, v5}, Lcom/lx/launcher8/util/Utils;->getMonth(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lx/launcher8/view/TimeCellView;->mShowWeek:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v20, 0x7f0a0089

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f0a008a

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 122
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 121
    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    return-void

    .line 117
    :catch_0
    move-exception v18

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Lcom/lx/launcher8/view/CellView;->onAttachedToWindow()V

    .line 47
    invoke-virtual {p0}, Lcom/lx/launcher8/view/TimeCellView;->onStart()V

    .line 48
    return-void
.end method

.method public onConfigChange(Lcom/lx/launcher8/bean/ItemCell;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/lx/launcher8/view/CellView;->onConfigChange(Lcom/lx/launcher8/bean/ItemCell;)V

    .line 61
    iget-object v0, p0, Lcom/lx/launcher8/view/TimeCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    check-cast v0, Lcom/lx/launcher8/bean/TimeCell;

    .line 62
    .local v0, tc:Lcom/lx/launcher8/bean/TimeCell;
    iget-object v2, p0, Lcom/lx/launcher8/view/TimeCellView;->mImageView:Landroid/widget/ImageView;

    iget v1, v0, Lcom/lx/launcher8/bean/TimeCell;->gravity:I

    if-nez v1, :cond_0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 63
    iget-object v1, p0, Lcom/lx/launcher8/view/TimeCellView;->mImageView:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/lx/launcher8/bean/TimeCell;->backBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 64
    iget v1, v0, Lcom/lx/launcher8/bean/TimeCell;->textColor:I

    invoke-direct {p0, v1}, Lcom/lx/launcher8/view/TimeCellView;->setTextColor(I)V

    .line 65
    return-void

    .line 62
    :cond_0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Lcom/lx/launcher8/view/CellView;->onDetachedFromWindow()V

    .line 52
    invoke-virtual {p0}, Lcom/lx/launcher8/view/TimeCellView;->onStop()V

    .line 53
    return-void
.end method

.method public onRefresh(Z)V
    .locals 0
    .parameter "mounted"

    .prologue
    .line 79
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lx/launcher8/view/TimeCellView;->mTimeRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xa

    invoke-virtual {p0, v0, v1, v2}, Lcom/lx/launcher8/view/TimeCellView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lx/launcher8/view/TimeCellView;->mTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/TimeCellView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 75
    return-void
.end method

.method protected setupViews()V
    .locals 3

    .prologue
    .line 33
    invoke-super {p0}, Lcom/lx/launcher8/view/CellView;->setupViews()V

    .line 34
    iget-object v0, p0, Lcom/lx/launcher8/view/TimeCellView;->mAlpahLayout:Lcom/lx/launcher8/view/AlphaLayout;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lx/launcher8/view/TimeCellView;->addAlphaLayout()V

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/lx/launcher8/view/TimeCellView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030045

    iget-object v2, p0, Lcom/lx/launcher8/view/TimeCellView;->mAlpahLayout:Lcom/lx/launcher8/view/AlphaLayout;

    invoke-static {v0, v1, v2}, Lcom/lx/launcher8/view/TimeCellView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 36
    const v0, 0x7f09011e

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/TimeCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lx/launcher8/view/TimeCellView;->mShowTime:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f090120

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/TimeCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lx/launcher8/view/TimeCellView;->mShowWeek:Landroid/widget/TextView;

    .line 38
    const v0, 0x7f09011f

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/TimeCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lx/launcher8/view/TimeCellView;->mShowChinese:Landroid/widget/TextView;

    .line 40
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy#MM#dd#HH:mm#ss"

    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/lx/launcher8/view/TimeCellView;->mSdf:Ljava/text/SimpleDateFormat;

    .line 41
    iget-object v0, p0, Lcom/lx/launcher8/view/TimeCellView;->mCellInfo:Lcom/lx/launcher8/bean/ItemCell;

    invoke-virtual {p0, v0}, Lcom/lx/launcher8/view/TimeCellView;->onConfigChange(Lcom/lx/launcher8/bean/ItemCell;)V

    .line 42
    return-void
.end method
