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

    new-instance v0, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    const-string v1, "Recent"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;->Recent:Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    new-instance v1, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    const-string v3, "AppFile"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;->AppFile:Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    new-instance v3, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    const-string v5, "Main"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;->Main:Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    new-instance v5, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    const-string v7, "CategoryAppFile"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;->CategoryAppFile:Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    new-instance v7, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    const-string v9, "GroupAppFile"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;->GroupAppFile:Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;->$VALUES:[Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;
    .registers 2

    const-class v0, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    return-object p0
.end method

.method public static values()[Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;->$VALUES:[Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    invoke-virtual {v0}, [Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/fileexplorer/adapter/FileGroupAdapter$Page;

    return-object v0
.end method
