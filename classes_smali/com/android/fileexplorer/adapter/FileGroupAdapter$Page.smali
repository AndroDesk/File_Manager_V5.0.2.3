.class public final enum Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;
.super Ljava/lang/Enum;
.source "FileGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/adapter/FileGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Page"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

.field public static final enum AppFile:Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

.field public static final enum CategoryAppFile:Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

.field public static final enum GroupAppFile:Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

.field public static final enum Main:Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

.field public static final enum Recent:Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;


# direct methods
.method public static constructor <clinit>()V
    .registers 11

    .line 1
    new-instance v0, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    .line 3
    const-string v1, "Recent"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;->Recent:Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    .line 11
    new-instance v1, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    .line 13
    const-string v3, "AppFile"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;->AppFile:Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    .line 21
    new-instance v3, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    .line 23
    const-string v5, "Main"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;->Main:Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    .line 31
    new-instance v5, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    .line 33
    const-string v7, "CategoryAppFile"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v5, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;->CategoryAppFile:Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    .line 41
    new-instance v7, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    .line 43
    const-string v9, "GroupAppFile"

    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v7, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;->GroupAppFile:Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    .line 51
    const/4 v9, 0x5

    .line 52
    new-array v9, v9, [Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    .line 54
    aput-object v0, v9, v2

    .line 56
    aput-object v1, v9, v4

    .line 58
    aput-object v3, v9, v6

    .line 60
    aput-object v5, v9, v8

    .line 62
    aput-object v7, v9, v10

    .line 64
    sput-object v9, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;->$VALUES:[Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    .line 66
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;
    .registers 2

    .line 1
    const-class v0, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;->$VALUES:[Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    .line 3
    invoke-virtual {v0}, [Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    .line 9
    return-object v0
.end method
