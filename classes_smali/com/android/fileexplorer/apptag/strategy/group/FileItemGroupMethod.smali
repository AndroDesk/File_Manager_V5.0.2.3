.class public final enum Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;
.super Ljava/lang/Enum;
.source "FileItemGroupMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;

.field public static final enum APP:Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;

.field public static final enum DATE:Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;

    const-string v1, "APP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;->APP:Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;

    new-instance v1, Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;

    const-string v3, "DATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;->DATE:Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;->$VALUES:[Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;
    .registers 2

    const-class v0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;

    return-object p0
.end method

.method public static values()[Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;->$VALUES:[Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;

    invoke-virtual {v0}, [Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;

    return-object v0
.end method
