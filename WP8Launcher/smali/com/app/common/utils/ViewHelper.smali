.class public final Lcom/app/common/utils/ViewHelper;
.super Ljava/lang/Object;
.source "ViewHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeDrawable(Landroid/content/Context;I)Landroid/text/SpannableString;
    .locals 5
    .parameter "context"
    .parameter "resourceId"

    .prologue
    .line 420
    if-gez p1, :cond_0

    .line 421
    const/4 v0, 0x0

    .line 426
    :goto_0
    return-object v0

    .line 422
    :cond_0
    if-nez p1, :cond_1

    .line 423
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 424
    :cond_1
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, " "

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 425
    .local v0, sp:Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/ImageSpan;

    invoke-direct {v1, p0, p1}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public static getALParam(II)Landroid/widget/AbsListView$LayoutParams;
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 246
    move v1, p0

    .local v1, w:I
    move v0, p1

    .line 247
    .local v0, h:I
    if-lez v1, :cond_0

    .line 248
    invoke-static {p0}, Lcom/app/common/utils/ViewHelper;->numToDIP(I)I

    move-result v1

    .line 249
    :cond_0
    if-lez v0, :cond_1

    .line 250
    invoke-static {p1}, Lcom/app/common/utils/ViewHelper;->numToDIP(I)I

    move-result v0

    .line 251
    :cond_1
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    return-object v2
.end method

.method public static getColor(II)Landroid/content/res/ColorStateList;
    .locals 1
    .parameter "fouces"
    .parameter "def"

    .prologue
    .line 166
    invoke-static {p0, p1, p1}, Lcom/app/common/utils/ViewHelper;->getColor(III)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static getColor(III)Landroid/content/res/ColorStateList;
    .locals 1
    .parameter "fouces"
    .parameter "def"
    .parameter "disable"

    .prologue
    .line 182
    invoke-static {p0, p0, p0, p1, p2}, Lcom/app/common/utils/ViewHelper;->getColor(IIIII)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static getColor(IIIII)Landroid/content/res/ColorStateList;
    .locals 8
    .parameter "fouces"
    .parameter "selected"
    .parameter "press"
    .parameter "def"
    .parameter "disable"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 202
    const/4 v2, 0x5

    new-array v0, v2, [I

    aput p0, v0, v4

    aput p1, v0, v5

    aput p2, v0, v3

    aput p3, v0, v6

    aput p4, v0, v7

    .line 203
    .local v0, color:[I
    const/4 v2, 0x5

    new-array v1, v2, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v1, v4

    .line 204
    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v1, v5

    .line 205
    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v1, v3

    new-array v2, v5, [I

    const v3, 0x101009e

    aput v3, v2, v4

    aput-object v2, v1, v6

    .line 206
    new-array v2, v5, [I

    const v3, -0x101009f

    aput v3, v2, v4

    aput-object v2, v1, v7

    .line 207
    .local v1, state:[[I
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2

    .line 203
    :array_0
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0x9ct 0x0t 0x1t 0x1t
    .end array-data

    .line 204
    :array_1
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0xa1t 0x0t 0x1t 0x1t
    .end array-data

    .line 205
    :array_2
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public static getDimension(Landroid/content/Context;F)F
    .locals 3
    .parameter "context"
    .parameter "size"

    .prologue
    .line 391
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 392
    .local v0, res:Landroid/content/res/Resources;
    const/4 v1, 0x1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    return v1
.end method

.method public static getDimension(Landroid/content/Context;IF)F
    .locals 2
    .parameter "context"
    .parameter "unit"
    .parameter "size"

    .prologue
    .line 408
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 409
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {p1, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    return v1
.end method

.method public static getDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/StateListDrawable;
    .locals 1
    .parameter "context"
    .parameter "fouces"
    .parameter "defualt"

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p2}, Lcom/app/common/utils/ViewHelper;->getDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/StateListDrawable;
    .locals 6
    .parameter "context"
    .parameter "fouces"
    .parameter "defualt"
    .parameter "disable"

    .prologue
    .line 61
    move-object v0, p0

    move v1, p1

    move v2, p1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/app/common/utils/ViewHelper;->getDrawable(Landroid/content/Context;IIIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawable(Landroid/content/Context;IIIII)Landroid/graphics/drawable/StateListDrawable;
    .locals 6
    .parameter "context"
    .parameter "fouces"
    .parameter "selected"
    .parameter "press"
    .parameter "defualt"
    .parameter "disable"

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 84
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 85
    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, p5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 84
    invoke-static {v1, v2, v3, v4, v5}, Lcom/app/common/utils/ViewHelper;->getDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static getDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;
    .locals 1
    .parameter "fouces"
    .parameter "defualt"

    .prologue
    .line 100
    invoke-static {p0, p1, p1}, Lcom/app/common/utils/ViewHelper;->getDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;
    .locals 1
    .parameter "fouces"
    .parameter "defualt"
    .parameter "disable"

    .prologue
    .line 117
    invoke-static {p0, p0, p0, p1, p2}, Lcom/app/common/utils/ViewHelper;->getDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;
    .locals 6
    .parameter "fouces"
    .parameter "selected"
    .parameter "press"
    .parameter "defualt"
    .parameter "disable"

    .prologue
    const v5, -0x101009f

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 139
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 140
    .local v0, listDrawable:Landroid/graphics/drawable/StateListDrawable;
    if-eqz p0, :cond_0

    .line 141
    new-array v1, v2, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 142
    :cond_0
    if-eqz p1, :cond_1

    .line 143
    new-array v1, v2, [I

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 144
    :cond_1
    if-eqz p2, :cond_2

    .line 145
    new-array v1, v2, [I

    fill-array-data v1, :array_2

    invoke-virtual {v0, v1, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 146
    :cond_2
    if-eqz p3, :cond_3

    .line 147
    new-array v1, v4, [I

    const v2, 0x101009e

    aput v2, v1, v3

    invoke-virtual {v0, v1, p3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 148
    :cond_3
    if-eqz p4, :cond_4

    .line 149
    new-array v1, v4, [I

    aput v5, v1, v3

    invoke-virtual {v0, v1, p4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 152
    :goto_0
    return-object v0

    .line 151
    :cond_4
    new-array v1, v4, [I

    aput v5, v1, v3

    invoke-virtual {v0, v1, p3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 141
    nop

    :array_0
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0x9ct 0x0t 0x1t 0x1t
    .end array-data

    .line 143
    :array_1
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0xa1t 0x0t 0x1t 0x1t
    .end array-data

    .line 145
    :array_2
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public static getFLParam(II)Landroid/widget/FrameLayout$LayoutParams;
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 310
    move v1, p0

    .local v1, w:I
    move v0, p1

    .line 311
    .local v0, h:I
    if-lez v1, :cond_0

    .line 312
    invoke-static {p0}, Lcom/app/common/utils/ViewHelper;->numToDIP(I)I

    move-result v1

    .line 313
    :cond_0
    if-lez v0, :cond_1

    .line 314
    invoke-static {p1}, Lcom/app/common/utils/ViewHelper;->numToDIP(I)I

    move-result v0

    .line 315
    :cond_1
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v2
.end method

.method public static getFLParam(III)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "gravity"

    .prologue
    .line 329
    invoke-static {p0, p1}, Lcom/app/common/utils/ViewHelper;->getFLParam(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 330
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 331
    return-object v0
.end method

.method public static getGLParam(II)Landroid/widget/Gallery$LayoutParams;
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 344
    move v1, p0

    .local v1, w:I
    move v0, p1

    .line 345
    .local v0, h:I
    if-lez v1, :cond_0

    .line 346
    invoke-static {p0}, Lcom/app/common/utils/ViewHelper;->numToDIP(I)I

    move-result v1

    .line 347
    :cond_0
    if-lez v0, :cond_1

    .line 348
    invoke-static {p1}, Lcom/app/common/utils/ViewHelper;->numToDIP(I)I

    move-result v0

    .line 349
    :cond_1
    new-instance v2, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    return-object v2
.end method

.method public static getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 263
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public static getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3
    .parameter "width"
    .parameter "height"
    .parameter "weight"

    .prologue
    .line 275
    move v1, p0

    .local v1, w:I
    move v0, p1

    .line 276
    .local v0, h:I
    if-lez v1, :cond_0

    .line 277
    invoke-static {p0}, Lcom/app/common/utils/ViewHelper;->numToDIP(I)I

    move-result v1

    .line 278
    :cond_0
    if-lez v0, :cond_1

    .line 279
    invoke-static {p1}, Lcom/app/common/utils/ViewHelper;->numToDIP(I)I

    move-result v0

    .line 280
    :cond_1
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    return-object v2
.end method

.method public static getMGParam(II)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 230
    move v1, p0

    .local v1, w:I
    move v0, p1

    .line 231
    .local v0, h:I
    if-lez v1, :cond_0

    .line 232
    invoke-static {p0}, Lcom/app/common/utils/ViewHelper;->numToDIP(I)I

    move-result v1

    .line 233
    :cond_0
    if-lez v0, :cond_1

    .line 234
    invoke-static {p1}, Lcom/app/common/utils/ViewHelper;->numToDIP(I)I

    move-result v0

    .line 235
    :cond_1
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v2
.end method

.method public static getMGParam(III)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "margin"

    .prologue
    .line 239
    invoke-static {p0, p1}, Lcom/app/common/utils/ViewHelper;->getMGParam(II)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    .line 240
    .local v0, mp:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {p2}, Lcom/app/common/utils/ViewHelper;->numToDIP(I)I

    move-result v1

    .line 241
    .local v1, tmp:I
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 242
    return-object v0
.end method

.method public static getMLParam(II)Lcom/app/common/view/MenuBar$LayoutParams;
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 335
    move v1, p0

    .local v1, w:I
    move v0, p1

    .line 336
    .local v0, h:I
    if-lez v1, :cond_0

    .line 337
    invoke-static {p0}, Lcom/app/common/utils/ViewHelper;->numToDIP(I)I

    move-result v1

    .line 338
    :cond_0
    if-lez v0, :cond_1

    .line 339
    invoke-static {p1}, Lcom/app/common/utils/ViewHelper;->numToDIP(I)I

    move-result v0

    .line 340
    :cond_1
    new-instance v2, Lcom/app/common/view/MenuBar$LayoutParams;

    invoke-direct {v2, v1, v0}, Lcom/app/common/view/MenuBar$LayoutParams;-><init>(II)V

    return-object v2
.end method

.method public static getRLParam(II)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 292
    move v1, p0

    .local v1, w:I
    move v0, p1

    .line 293
    .local v0, h:I
    if-lez v1, :cond_0

    .line 294
    invoke-static {p0}, Lcom/app/common/utils/ViewHelper;->numToDIP(I)I

    move-result v1

    .line 295
    :cond_0
    if-lez v0, :cond_1

    .line 296
    invoke-static {p1}, Lcom/app/common/utils/ViewHelper;->numToDIP(I)I

    move-result v0

    .line 297
    :cond_1
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v2
.end method

.method public static getResourceId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .parameter "context"
    .parameter "name"

    .prologue
    .line 360
    const-string v0, "drawable"

    invoke-static {p0, p1, v0}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "name"
    .parameter "defType"

    .prologue
    .line 373
    if-nez p0, :cond_0

    .line 374
    const/4 v0, 0x0

    .line 375
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getVGParam(II)Landroid/view/ViewGroup$LayoutParams;
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 220
    move v1, p0

    .local v1, w:I
    move v0, p1

    .line 221
    .local v0, h:I
    if-lez v1, :cond_0

    .line 222
    invoke-static {p0}, Lcom/app/common/utils/ViewHelper;->numToDIP(I)I

    move-result v1

    .line 223
    :cond_0
    if-lez v0, :cond_1

    .line 224
    invoke-static {p1}, Lcom/app/common/utils/ViewHelper;->numToDIP(I)I

    move-result v0

    .line 225
    :cond_1
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v2
.end method

.method private static numToDIP(I)I
    .locals 4
    .parameter "num"

    .prologue
    .line 379
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 380
    .local v0, res:Landroid/content/res/Resources;
    const/4 v1, 0x1

    int-to-float v2, p0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    return v1
.end method
