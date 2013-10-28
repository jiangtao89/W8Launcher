.class public final Lcom/lx/launcher8/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final Cell:[I = null

.field public static final Cell_action:I = 0x2

.field public static final Cell_backColor:I = 0xa

.field public static final Cell_cellType:I = 0x8

.field public static final Cell_cellX:I = 0x4

.field public static final Cell_cellY:I = 0x5

.field public static final Cell_className:I = 0x1

.field public static final Cell_gravity:I = 0xb

.field public static final Cell_icon:I = 0xd

.field public static final Cell_packageName:I = 0x0

.field public static final Cell_spanX:I = 0x6

.field public static final Cell_spanY:I = 0x7

.field public static final Cell_style:I = 0xc

.field public static final Cell_textColor:I = 0x9

.field public static final Cell_title:I = 0x3

.field public static final TitleFlowIndicator:[I = null

.field public static final TitleFlowIndicator_normalColor:I = 0x0

.field public static final TitleFlowIndicator_selectedBold:I = 0x4

.field public static final TitleFlowIndicator_selectedColor:I = 0x3

.field public static final TitleFlowIndicator_selectedSize:I = 0x5

.field public static final TitleFlowIndicator_textSize:I = 0x1

.field public static final TitleFlowIndicator_titlePadding:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3027
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lx/launcher8/R$styleable;->Cell:[I

    .line 3249
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/lx/launcher8/R$styleable;->TitleFlowIndicator:[I

    .line 2990
    return-void

    .line 3027
    :array_0
    .array-data 0x4
        0x11t 0x0t 0x1t 0x7ft
        0x12t 0x0t 0x1t 0x7ft
        0x13t 0x0t 0x1t 0x7ft
        0x14t 0x0t 0x1t 0x7ft
        0x15t 0x0t 0x1t 0x7ft
        0x16t 0x0t 0x1t 0x7ft
        0x17t 0x0t 0x1t 0x7ft
        0x18t 0x0t 0x1t 0x7ft
        0x19t 0x0t 0x1t 0x7ft
        0x1at 0x0t 0x1t 0x7ft
        0x1bt 0x0t 0x1t 0x7ft
        0x1ct 0x0t 0x1t 0x7ft
        0x1dt 0x0t 0x1t 0x7ft
        0x1et 0x0t 0x1t 0x7ft
    .end array-data

    .line 3249
    :array_1
    .array-data 0x4
        0xbt 0x0t 0x1t 0x7ft
        0xct 0x0t 0x1t 0x7ft
        0xdt 0x0t 0x1t 0x7ft
        0xet 0x0t 0x1t 0x7ft
        0xft 0x0t 0x1t 0x7ft
        0x10t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2990
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
