.class Lcom/lx/launcher8/view/IntPreference$SavedState$1;
.super Ljava/lang/Object;
.source "IntPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lx/launcher8/view/IntPreference$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/lx/launcher8/view/IntPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lx/launcher8/view/IntPreference$SavedState;
    .locals 1
    .parameter "in"

    .prologue
    .line 123
    new-instance v0, Lcom/lx/launcher8/view/IntPreference$SavedState;

    invoke-direct {v0, p1}, Lcom/lx/launcher8/view/IntPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lx/launcher8/view/IntPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lx/launcher8/view/IntPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lx/launcher8/view/IntPreference$SavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 127
    new-array v0, p1, [Lcom/lx/launcher8/view/IntPreference$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lx/launcher8/view/IntPreference$SavedState$1;->newArray(I)[Lcom/lx/launcher8/view/IntPreference$SavedState;

    move-result-object v0

    return-object v0
.end method
