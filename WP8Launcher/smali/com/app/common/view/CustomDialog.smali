.class public Lcom/app/common/view/CustomDialog;
.super Landroid/app/Dialog;
.source "CustomDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/common/view/CustomDialog$CustomDialogCallback;,
        Lcom/app/common/view/CustomDialog$MyListener;
    }
.end annotation


# instance fields
.field private mCDCCancel:Lcom/app/common/view/CustomDialog$CustomDialogCallback;

.field private mCDCOK:Lcom/app/common/view/CustomDialog$CustomDialogCallback;

.field private mCancel:Landroid/widget/Button;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContentLayout:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mConvertView:Landroid/widget/LinearLayout;

.field private mEditTextA:Landroid/widget/EditText;

.field private mEditTextAMore:Landroid/widget/TextView;

.field private mEditTextB:Landroid/widget/EditText;

.field private mEditTextBMore:Landroid/widget/TextView;

.field private mExpandLinearLayout:Landroid/widget/LinearLayout;

.field private mIcon:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field private mMsg:Landroid/widget/TextView;

.field private mOK:Landroid/widget/Button;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleEditTextA:Landroid/widget/TextView;

.field private mTitleEditTextB:Landroid/widget/TextView;

.field private mTitleLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/app/common/view/CustomDialog;-><init>(Landroid/content/Context;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 8
    .parameter "context"
    .parameter "buttonTextStyle"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 67
    iput-object p1, p0, Lcom/app/common/view/CustomDialog;->mContext:Landroid/content/Context;

    .line 68
    invoke-direct {p0}, Lcom/app/common/view/CustomDialog;->initView()V

    .line 70
    invoke-virtual {p0, p2}, Lcom/app/common/view/CustomDialog;->setBottomTextStyle(I)Lcom/app/common/view/CustomDialog;

    .line 72
    invoke-virtual {p0}, Lcom/app/common/view/CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 73
    .local v3, width:I
    invoke-virtual {p0}, Lcom/app/common/view/CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 75
    .local v0, hight:I
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 77
    .local v1, min:I
    invoke-virtual {p0}, Lcom/app/common/view/CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 78
    .local v2, p:Landroid/view/WindowManager$LayoutParams;
    int-to-double v4, v1

    const-wide v6, 0x3feccccccccccccdL

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 79
    invoke-virtual {p0}, Lcom/app/common/view/CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 80
    return-void
.end method

.method static synthetic access$0(Lcom/app/common/view/CustomDialog;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/app/common/view/CustomDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextA:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/app/common/view/CustomDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextB:Landroid/widget/EditText;

    return-object v0
.end method

.method private getEidtTextBg()Landroid/graphics/drawable/ShapeDrawable;
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x4

    .line 285
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    const/4 v1, -0x1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v4, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/high16 v4, -0x100

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/app/common/view/CShape;->creatSolidShapeDrawable([FILandroid/graphics/Rect;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x41t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x41t
    .end array-data
.end method

.method private initView()V
    .locals 13

    .prologue
    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/app/common/view/CustomDialog;->requestWindowFeature(I)Z

    .line 84
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/app/common/view/CustomDialog;->mConvertView:Landroid/widget/LinearLayout;

    .line 85
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mConvertView:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 87
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mConvertView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/app/common/view/CustomDialog;->setContentView(Landroid/view/View;)V

    .line 88
    invoke-virtual {p0}, Lcom/app/common/view/CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    const/4 v0, 0x0

    const/high16 v1, 0x4140

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, -0xecbd8a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/app/common/view/CShape;->creatSolidShapeDrawable(IFILandroid/graphics/Rect;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 92
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitleLayout:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitleLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 94
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mContext:Landroid/content/Context;

    const/high16 v1, 0x41a0

    invoke-static {v0, v1}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v0

    float-to-int v10, v0

    .line 95
    .local v10, paddings:I
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitleLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 96
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitleLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/app/common/config/Resources;->custom_dialog_top_bg:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 97
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mConvertView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 98
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/app/common/view/CustomDialog;->mIcon:Landroid/widget/ImageView;

    .line 99
    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    .line 100
    .local v8, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mContext:Landroid/content/Context;

    const/high16 v1, 0x4080

    invoke-static {v0, v1}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 101
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/app/common/config/Resources;->custom_dialog_icon:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitleLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 104
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitle:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitle:Landroid/widget/TextView;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitle:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitle:Landroid/widget/TextView;

    const/high16 v1, 0x4198

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 108
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitleLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 110
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/app/common/view/CustomDialog;->mContentLayout:Landroid/widget/LinearLayout;

    .line 111
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mContentLayout:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mContentLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 113
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mContext:Landroid/content/Context;

    const/high16 v1, 0x4180

    invoke-static {v0, v1}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v0

    float-to-int v10, v0

    .line 114
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 115
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mContentLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 116
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mConvertView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 117
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/app/common/view/CustomDialog;->mMsg:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mMsg:Landroid/widget/TextView;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mMsg:Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mMsg:Landroid/widget/TextView;

    const/high16 v1, 0x4190

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 121
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mContentLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 123
    new-instance v11, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mContext:Landroid/content/Context;

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 124
    .local v11, tmp:Landroid/widget/LinearLayout;
    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    const/16 v0, 0x10

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 126
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 127
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitleEditTextA:Landroid/widget/TextView;

    .line 128
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitleEditTextA:Landroid/widget/TextView;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitleEditTextA:Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitleEditTextA:Landroid/widget/TextView;

    const/high16 v1, 0x4160

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 131
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitleEditTextA:Landroid/widget/TextView;

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextA:Landroid/widget/EditText;

    .line 133
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextA:Landroid/widget/EditText;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/high16 v3, 0x3f80

    invoke-static {v1, v2, v3}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextA:Landroid/widget/EditText;

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 135
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextAMore:Landroid/widget/TextView;

    .line 136
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextAMore:Landroid/widget/TextView;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextAMore:Landroid/widget/TextView;

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 139
    new-instance v11, Landroid/widget/LinearLayout;

    .end local v11           #tmp:Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mContext:Landroid/content/Context;

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 140
    .restart local v11       #tmp:Landroid/widget/LinearLayout;
    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    const/16 v0, 0x10

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 142
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 143
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitleEditTextB:Landroid/widget/TextView;

    .line 144
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitleEditTextB:Landroid/widget/TextView;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitleEditTextB:Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitleEditTextB:Landroid/widget/TextView;

    const/high16 v1, 0x4160

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 147
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitleEditTextB:Landroid/widget/TextView;

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 148
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextB:Landroid/widget/EditText;

    .line 149
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextB:Landroid/widget/EditText;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/high16 v3, 0x3f80

    invoke-static {v1, v2, v3}, Lcom/app/common/utils/ViewHelper;->getLLParam(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextB:Landroid/widget/EditText;

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextBMore:Landroid/widget/TextView;

    .line 152
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextBMore:Landroid/widget/TextView;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextBMore:Landroid/widget/TextView;

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 155
    new-instance v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/app/common/view/CustomDialog;->mCheckBox:Landroid/widget/CheckBox;

    .line 156
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setGravity(I)V

    .line 158
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mCheckBox:Landroid/widget/CheckBox;

    const v1, -0xf56733

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 159
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mCheckBox:Landroid/widget/CheckBox;

    const/high16 v1, 0x4150

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 160
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mContentLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 161
    new-instance v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/app/common/view/CustomDialog;->mListView:Landroid/widget/ListView;

    .line 162
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mListView:Landroid/widget/ListView;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mContentLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 164
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/app/common/view/CustomDialog;->mExpandLinearLayout:Landroid/widget/LinearLayout;

    .line 165
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mExpandLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mExpandLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 167
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mContentLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mExpandLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 170
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 171
    .local v6, ll:Landroid/widget/LinearLayout;
    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/app/common/config/Resources;->custom_dialog_bottom_bg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 173
    const/16 v0, 0x11

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 174
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mContext:Landroid/content/Context;

    const/high16 v1, 0x425c

    invoke-static {v0, v1}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 175
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mConvertView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/app/common/view/CustomDialog;->mOK:Landroid/widget/Button;

    .line 177
    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/app/common/utils/ViewHelper;->getLLParam(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 178
    .local v7, llp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mContext:Landroid/content/Context;

    const/high16 v1, 0x4120

    invoke-static {v0, v1}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v0

    float-to-int v9, v0

    .line 179
    .local v9, margins:I
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v7, v9, v0, v9, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 180
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mOK:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mOK:Landroid/widget/Button;

    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/app/common/config/Resources;->custom_dialog_button:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 182
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mOK:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 183
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mOK:Landroid/widget/Button;

    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mContext:Landroid/content/Context;

    const/high16 v2, 0x42de

    invoke-static {v1, v2}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinWidth(I)V

    .line 184
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mOK:Landroid/widget/Button;

    const/high16 v1, 0x4190

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 185
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mOK:Landroid/widget/Button;

    const-string v1, "\u786e\u5b9a"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mOK:Landroid/widget/Button;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 187
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/app/common/view/CustomDialog;->mCancel:Landroid/widget/Button;

    .line 188
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mCancel:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/app/common/config/Resources;->custom_dialog_button:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 190
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mCancel:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 191
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mContext:Landroid/content/Context;

    const/high16 v2, 0x42de

    invoke-static {v1, v2}, Lcom/app/common/utils/ViewHelper;->getDimension(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinWidth(I)V

    .line 192
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mCancel:Landroid/widget/Button;

    const/high16 v1, 0x4190

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 193
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mCancel:Landroid/widget/Button;

    const-string v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mCancel:Landroid/widget/Button;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 198
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitleLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 202
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mMsg:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitleEditTextA:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextA:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextAMore:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitleEditTextB:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextB:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextBMore:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 212
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/app/common/view/CustomDialog;->setBottomStyle(I)Lcom/app/common/view/CustomDialog;

    .line 214
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mOK:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mCancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    return-void
.end method


# virtual methods
.method public addCustomView(Landroid/view/View;)Lcom/app/common/view/CustomDialog;
    .locals 1
    .parameter "view"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mExpandLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 427
    return-object p0
.end method

.method public getContentLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mContentLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getEditTextA()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextA:Landroid/widget/EditText;

    return-object v0
.end method

.method public getEditTextAText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextA:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEditTextBText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextB:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getMsgTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mMsg:Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 446
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/app/common/view/CustomDialog;->mEditTextA:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/app/common/view/CustomDialog;->mEditTextB:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/app/common/view/CustomDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 449
    .local v0, textInputed:[Ljava/lang/String;
    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mCDCOK:Lcom/app/common/view/CustomDialog$CustomDialogCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mOK:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 450
    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mCDCOK:Lcom/app/common/view/CustomDialog$CustomDialogCallback;

    invoke-interface {v1, v0}, Lcom/app/common/view/CustomDialog$CustomDialogCallback;->call([Ljava/lang/String;)V

    .line 454
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/app/common/view/CustomDialog;->dismiss()V

    .line 455
    return-void

    .line 451
    :cond_1
    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mCDCCancel:Lcom/app/common/view/CustomDialog$CustomDialogCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mCancel:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mCDCCancel:Lcom/app/common/view/CustomDialog$CustomDialogCallback;

    invoke-interface {v1, v0}, Lcom/app/common/view/CustomDialog$CustomDialogCallback;->call([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/app/common/view/CustomDialog;
    .locals 1
    .parameter "adapter"
    .parameter "listener"

    .prologue
    .line 391
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/app/common/view/CustomDialog;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;Landroid/widget/AdapterView$OnItemLongClickListener;)Lcom/app/common/view/CustomDialog;

    move-result-object v0

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;Landroid/widget/AdapterView$OnItemLongClickListener;)Lcom/app/common/view/CustomDialog;
    .locals 4
    .parameter "adapter"
    .parameter "listener"
    .parameter

    .prologue
    .local p3, longListener:Landroid/widget/AdapterView$OnItemLongClickListener;,"Landroid/widget/AdapterView$OnItemLongClickListener;"
    const/4 v3, 0x0

    .line 399
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 402
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 403
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 404
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/app/common/view/CustomDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/app/common/config/Resources;->list_item_selecte:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/app/common/utils/ViewHelper;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    .line 405
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mConvertView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 406
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 408
    if-eqz p2, :cond_0

    .line 409
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/app/common/view/CustomDialog$1;

    invoke-direct {v1, p0, p2}, Lcom/app/common/view/CustomDialog$1;-><init>(Lcom/app/common/view/CustomDialog;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 417
    :cond_0
    if-eqz p3, :cond_1

    .line 418
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 421
    :cond_1
    return-object p0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemLongClickListener;)Lcom/app/common/view/CustomDialog;
    .locals 1
    .parameter "adapter"
    .parameter

    .prologue
    .line 395
    .local p2, longListener:Landroid/widget/AdapterView$OnItemLongClickListener;,"Landroid/widget/AdapterView$OnItemLongClickListener;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/app/common/view/CustomDialog;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;Landroid/widget/AdapterView$OnItemLongClickListener;)Lcom/app/common/view/CustomDialog;

    move-result-object v0

    return-object v0
.end method

.method public setBackResource(I)Lcom/app/common/view/CustomDialog;
    .locals 1
    .parameter "rid"

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/app/common/view/CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 469
    return-object p0
.end method

.method public setBottomStyle(I)Lcom/app/common/view/CustomDialog;
    .locals 4
    .parameter "style"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 477
    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mOK:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 478
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 481
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 500
    :cond_1
    :goto_0
    return-object p0

    .line 483
    :pswitch_0
    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mOK:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 486
    :pswitch_1
    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mOK:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 487
    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mCancel:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 490
    :pswitch_2
    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mCancel:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 491
    iget-object v1, p0, Lcom/app/common/view/CustomDialog;->mOK:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 494
    :pswitch_3
    if-eqz v0, :cond_1

    .line 495
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 481
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setBottomTextStyle(I)Lcom/app/common/view/CustomDialog;
    .locals 2
    .parameter "buttonTextStyle"

    .prologue
    .line 458
    packed-switch p1, :pswitch_data_0

    .line 464
    :goto_0
    return-object p0

    .line 460
    :pswitch_0
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mOK:Landroid/widget/Button;

    const-string v1, "\u662f"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 461
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mCancel:Landroid/widget/Button;

    const-string v1, "\u5426"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 458
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setCustomBottomColor(I)Lcom/app/common/view/CustomDialog;
    .locals 1
    .parameter "color"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mOK:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 267
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mCancel:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 268
    return-object p0
.end method

.method public setCustomCheckBox(Ljava/lang/String;Z)Lcom/app/common/view/CustomDialog;
    .locals 2
    .parameter "msg"
    .parameter "isChecked"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 280
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 281
    return-object p0
.end method

.method public setCustomIcon(I)Lcom/app/common/view/CustomDialog;
    .locals 2
    .parameter "resourceID"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 220
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    return-object p0
.end method

.method public setCustomIcon(III)Lcom/app/common/view/CustomDialog;
    .locals 2
    .parameter "resourceID"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 226
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 227
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 228
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    return-object p0
.end method

.method public setCustomMsg(I)Lcom/app/common/view/CustomDialog;
    .locals 2
    .parameter "msgResId"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mMsg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 273
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mMsg:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    return-object p0
.end method

.method public setCustomMsg(Ljava/lang/String;)Lcom/app/common/view/CustomDialog;
    .locals 2
    .parameter "msg"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mMsg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mMsg:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    return-object p0
.end method

.method public setCustomMsgColor(I)Lcom/app/common/view/CustomDialog;
    .locals 1
    .parameter "color"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mMsg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 262
    return-object p0
.end method

.method public setCustomTitle(I)Lcom/app/common/view/CustomDialog;
    .locals 2
    .parameter "titleResId"

    .prologue
    const/4 v1, 0x0

    .line 246
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 249
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 251
    return-object p0
.end method

.method public setCustomTitle(Ljava/lang/String;)Lcom/app/common/view/CustomDialog;
    .locals 2
    .parameter "title"

    .prologue
    const/4 v1, 0x0

    .line 233
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 237
    return-object p0
.end method

.method public setCustomTitleColor(I)Lcom/app/common/view/CustomDialog;
    .locals 1
    .parameter "color"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    return-object p0
.end method

.method public setEditTextAShow(Ljava/lang/String;)Lcom/app/common/view/CustomDialog;
    .locals 2
    .parameter "text"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextA:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextA:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 291
    return-object p0
.end method

.method public setEditTextAShow(Ljava/lang/String;Ljava/lang/String;Z)Lcom/app/common/view/CustomDialog;
    .locals 2
    .parameter "title"
    .parameter "text"
    .parameter "isRightIconShow"

    .prologue
    const/4 v1, 0x0

    .line 295
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitleEditTextA:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitleEditTextA:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextA:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextA:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 301
    if-eqz p3, :cond_0

    .line 302
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextAMore:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextA:Landroid/widget/EditText;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 304
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextA:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/app/common/view/CustomDialog;->getEidtTextBg()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 307
    :cond_0
    return-object p0
.end method

.method public setEditTextAShow(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)Lcom/app/common/view/CustomDialog;
    .locals 3
    .parameter "title"
    .parameter "text"
    .parameter "isRightIconShow"
    .parameter "params"

    .prologue
    const/4 v1, 0x0

    .line 311
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitleEditTextA:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitleEditTextA:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextA:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextA:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 317
    if-eqz p3, :cond_0

    .line 318
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextAMore:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextAMore:Landroid/widget/TextView;

    new-instance v1, Lcom/app/common/view/CustomDialog$MyListener;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, p4}, Lcom/app/common/view/CustomDialog$MyListener;-><init>(Lcom/app/common/view/CustomDialog;I[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextA:Landroid/widget/EditText;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 321
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextA:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/app/common/view/CustomDialog;->getEidtTextBg()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 324
    :cond_0
    return-object p0
.end method

.method public setEditTextAText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextA:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 376
    return-void
.end method

.method public setEditTextBShow(Ljava/lang/String;)Lcom/app/common/view/CustomDialog;
    .locals 2
    .parameter "text"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextB:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextB:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 330
    return-object p0
.end method

.method public setEditTextBShow(Ljava/lang/String;Ljava/lang/String;Z)Lcom/app/common/view/CustomDialog;
    .locals 2
    .parameter "title"
    .parameter "text"
    .parameter "isRightIconShow"

    .prologue
    const/4 v1, 0x0

    .line 334
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitleEditTextB:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitleEditTextB:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextB:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextB:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 340
    if-eqz p3, :cond_0

    .line 341
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextBMore:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextB:Landroid/widget/EditText;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 343
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextB:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/app/common/view/CustomDialog;->getEidtTextBg()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 346
    :cond_0
    return-object p0
.end method

.method public setEditTextBShow(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)Lcom/app/common/view/CustomDialog;
    .locals 3
    .parameter "title"
    .parameter "text"
    .parameter "isRightIconShow"
    .parameter "params"

    .prologue
    const/4 v1, 0x0

    .line 350
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitleEditTextB:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mTitleEditTextB:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextB:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextB:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 356
    if-eqz p3, :cond_0

    .line 357
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextBMore:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextBMore:Landroid/widget/TextView;

    new-instance v1, Lcom/app/common/view/CustomDialog$MyListener;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2, p4}, Lcom/app/common/view/CustomDialog$MyListener;-><init>(Lcom/app/common/view/CustomDialog;I[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextB:Landroid/widget/EditText;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 360
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextB:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/app/common/view/CustomDialog;->getEidtTextBg()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 363
    :cond_0
    return-object p0
.end method

.method public setEditTextBText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextB:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 380
    return-void
.end method

.method public setOnCancelClickListener(Lcom/app/common/view/CustomDialog$CustomDialogCallback;)Lcom/app/common/view/CustomDialog;
    .locals 0
    .parameter "cdc"

    .prologue
    .line 439
    iput-object p1, p0, Lcom/app/common/view/CustomDialog;->mCDCCancel:Lcom/app/common/view/CustomDialog$CustomDialogCallback;

    .line 441
    return-object p0
.end method

.method public setOnOKClickListener(Lcom/app/common/view/CustomDialog$CustomDialogCallback;)Lcom/app/common/view/CustomDialog;
    .locals 1
    .parameter "cdc"

    .prologue
    .line 431
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/app/common/view/CustomDialog;->setBottomStyle(I)Lcom/app/common/view/CustomDialog;

    .line 433
    iput-object p1, p0, Lcom/app/common/view/CustomDialog;->mCDCOK:Lcom/app/common/view/CustomDialog$CustomDialogCallback;

    .line 435
    return-object p0
.end method

.method public setRIconAOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "onClickListener"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextAMore:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    return-void
.end method

.method public setRIconBOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "onClickListener"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/app/common/view/CustomDialog;->mEditTextBMore:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    return-void
.end method
