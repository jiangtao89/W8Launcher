.class public Lcom/app/common/view/WorkspaceView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "WorkspaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/common/view/WorkspaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/app/common/view/WorkspaceView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field currentScreen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 654
    new-instance v0, Lcom/app/common/view/WorkspaceView$SavedState$1;

    invoke-direct {v0}, Lcom/app/common/view/WorkspaceView$SavedState$1;-><init>()V

    sput-object v0, Lcom/app/common/view/WorkspaceView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 620
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 638
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 621
    const/4 v0, -0x1

    iput v0, p0, Lcom/app/common/view/WorkspaceView$SavedState;->currentScreen:I

    .line 639
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/app/common/view/WorkspaceView$SavedState;->currentScreen:I

    .line 640
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/app/common/view/WorkspaceView$SavedState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 637
    invoke-direct {p0, p1}, Lcom/app/common/view/WorkspaceView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 1
    .parameter "superState"

    .prologue
    .line 629
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 621
    const/4 v0, -0x1

    iput v0, p0, Lcom/app/common/view/WorkspaceView$SavedState;->currentScreen:I

    .line 630
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 647
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 648
    iget v0, p0, Lcom/app/common/view/WorkspaceView$SavedState;->currentScreen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 649
    return-void
.end method
