.class Lcom/anall/screenlock/LockLayout$MyInterpolator;
.super Landroid/view/animation/AccelerateDecelerateInterpolator;
.source "WPLockAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anall/screenlock/LockLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyInterpolator"
.end annotation


# instance fields
.field private mInterpolatorType:I

.field final synthetic this$0:Lcom/anall/screenlock/LockLayout;


# direct methods
.method public constructor <init>(Lcom/anall/screenlock/LockLayout;)V
    .locals 1
    .parameter

    .prologue
    .line 854
    iput-object p1, p0, Lcom/anall/screenlock/LockLayout$MyInterpolator;->this$0:Lcom/anall/screenlock/LockLayout;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 855
    const/4 v0, 0x0

    iput v0, p0, Lcom/anall/screenlock/LockLayout$MyInterpolator;->mInterpolatorType:I

    .line 856
    return-void
.end method

.method private bounce(F)F
    .locals 2
    .parameter "t"

    .prologue
    .line 863
    mul-float v0, p1, p1

    const/high16 v1, 0x4100

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2
    .parameter "t"

    .prologue
    .line 867
    iget v0, p0, Lcom/anall/screenlock/LockLayout$MyInterpolator;->mInterpolatorType:I

    if-nez v0, :cond_0

    .line 868
    invoke-super {p0, p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    .line 874
    :goto_0
    return v0

    .line 870
    :cond_0
    const v0, 0x3f8fb15b

    mul-float/2addr p1, v0

    .line 871
    const v0, 0x3eb4fdf4

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/anall/screenlock/LockLayout$MyInterpolator;->bounce(F)F

    move-result v0

    goto :goto_0

    .line 872
    :cond_1
    const v0, 0x3f3da512

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    const v0, 0x3f0c14a5

    sub-float v0, p1, v0

    invoke-direct {p0, v0}, Lcom/anall/screenlock/LockLayout$MyInterpolator;->bounce(F)F

    move-result v0

    const v1, 0x3f333333

    add-float/2addr v0, v1

    goto :goto_0

    .line 873
    :cond_2
    const v0, 0x3f76e2eb

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    const v0, 0x3f5a43fe

    sub-float v0, p1, v0

    invoke-direct {p0, v0}, Lcom/anall/screenlock/LockLayout$MyInterpolator;->bounce(F)F

    move-result v0

    const v1, 0x3f666666

    add-float/2addr v0, v1

    goto :goto_0

    .line 874
    :cond_3
    const v0, 0x3f859168

    sub-float v0, p1, v0

    invoke-direct {p0, v0}, Lcom/anall/screenlock/LockLayout$MyInterpolator;->bounce(F)F

    move-result v0

    const v1, 0x3f733333

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public setInterpolatorType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 859
    iput p1, p0, Lcom/anall/screenlock/LockLayout$MyInterpolator;->mInterpolatorType:I

    .line 860
    return-void
.end method
