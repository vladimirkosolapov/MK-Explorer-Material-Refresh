.class public final enum Lcom/github/junrar/unpack/vm/VMFlags;
.super Ljava/lang/Enum;
.source "VMFlags.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/github/junrar/unpack/vm/VMFlags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/junrar/unpack/vm/VMFlags;

.field public static final enum VM_FC:Lcom/github/junrar/unpack/vm/VMFlags;

.field public static final enum VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

.field public static final enum VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;


# instance fields
.field private flag:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lcom/github/junrar/unpack/vm/VMFlags;

    const-string v1, "VM_FC"

    invoke-direct {v0, v1, v5, v3}, Lcom/github/junrar/unpack/vm/VMFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/github/junrar/unpack/vm/VMFlags;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMFlags;

    const-string v1, "VM_FZ"

    invoke-direct {v0, v1, v3, v4}, Lcom/github/junrar/unpack/vm/VMFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    new-instance v0, Lcom/github/junrar/unpack/vm/VMFlags;

    const-string v1, "VM_FS"

    const/high16 v2, -0x80000000

    invoke-direct {v0, v1, v4, v2}, Lcom/github/junrar/unpack/vm/VMFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/github/junrar/unpack/vm/VMFlags;

    sget-object v1, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/github/junrar/unpack/vm/VMFlags;

    aput-object v1, v0, v5

    sget-object v1, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    aput-object v1, v0, v3

    sget-object v1, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    aput-object v1, v0, v4

    sput-object v0, Lcom/github/junrar/unpack/vm/VMFlags;->$VALUES:[Lcom/github/junrar/unpack/vm/VMFlags;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/github/junrar/unpack/vm/VMFlags;->flag:I

    return-void
.end method

.method public static findFlag(I)Lcom/github/junrar/unpack/vm/VMFlags;
    .locals 1

    sget-object v0, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMFlags;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FC:Lcom/github/junrar/unpack/vm/VMFlags;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMFlags;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FS:Lcom/github/junrar/unpack/vm/VMFlags;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v0, p0}, Lcom/github/junrar/unpack/vm/VMFlags;->equals(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/github/junrar/unpack/vm/VMFlags;->VM_FZ:Lcom/github/junrar/unpack/vm/VMFlags;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/junrar/unpack/vm/VMFlags;
    .locals 1

    const-class v0, Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/junrar/unpack/vm/VMFlags;

    return-object v0
.end method

.method public static values()[Lcom/github/junrar/unpack/vm/VMFlags;
    .locals 1

    sget-object v0, Lcom/github/junrar/unpack/vm/VMFlags;->$VALUES:[Lcom/github/junrar/unpack/vm/VMFlags;

    invoke-virtual {v0}, [Lcom/github/junrar/unpack/vm/VMFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/junrar/unpack/vm/VMFlags;

    return-object v0
.end method


# virtual methods
.method public equals(I)Z
    .locals 1

    iget v0, p0, Lcom/github/junrar/unpack/vm/VMFlags;->flag:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFlag()I
    .locals 1

    iget v0, p0, Lcom/github/junrar/unpack/vm/VMFlags;->flag:I

    return v0
.end method
