.class public final Lcom/android/fileexplorer/util/DebounceHelper;
.super Ljava/lang/Object;
.source "DebounceHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/util/DebounceHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/fileexplorer/util/DebounceHelper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEBOUNCE_TIME:J = 0x1f4L


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/util/DebounceHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/fileexplorer/util/DebounceHelper$Companion;-><init>(Li3/e;)V

    sput-object v0, Lcom/android/fileexplorer/util/DebounceHelper;->Companion:Lcom/android/fileexplorer/util/DebounceHelper$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
